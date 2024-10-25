import 'package:desktop_window/desktop_window.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/l10n/l10n.dart';
import 'package:pokedex/router/router.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:pokedex/shared/shared.dart';
import 'package:universal_platform/universal_platform.dart';

Future setDesktopWindow() async {
  await DesktopWindow.setMinWindowSize(const Size(400, 400));
  await DesktopWindow.setWindowSize(const Size(1300, 900));
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (UniversalPlatform.isDesktop) {
    setDesktopWindow();
  }

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final settings = ValueNotifier(ThemeSettings(
    sourceColor: kRed,
    themeMode: ThemeMode.dark,
  ));
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
        builder: (lightDynamic, darkDynamic) => ThemeProvider(
            lightDynamic: lightDynamic,
            darkDynamic: darkDynamic,
            settings: settings,
            child: NotificationListener<ThemeSettingChange>(
              onNotification: (notification) {
                settings.value = notification.settings;
                return true;
              },
              child: ValueListenableBuilder<ThemeSettings>(
                valueListenable: settings,
                builder: (context, value, _) {
                  final theme = ThemeProvider.of(context);
                  return MultiRepositoryProvider(
                    providers: [
                      RepositoryProvider(
                        create: (context) => PokeApiRepository(),
                      ),
                    ],
                    child: GestureDetector(
                      onTap: () =>
                          FocusManager.instance.primaryFocus?.unfocus(),
                      child: MaterialApp.router(
                        debugShowCheckedModeBanner: false,
                        title: 'Pokédex App',
                        theme: theme.light(context, settings.value.sourceColor),
                        darkTheme:
                            theme.dark(context, settings.value.sourceColor),
                        themeMode: theme.themeMode(),
                        routeInformationParser:
                            appRouter.routeInformationParser,
                        routeInformationProvider:
                            appRouter.routeInformationProvider,
                        routerDelegate: appRouter.routerDelegate,
                        localizationsDelegates: const [
                          AppLocalizations.delegate,
                          GlobalMaterialLocalizations.delegate,
                          GlobalWidgetsLocalizations.delegate,
                          GlobalCupertinoLocalizations.delegate,
                        ],
                      ),
                    ),
                  );
                },
              ),
            )));
  }
}
