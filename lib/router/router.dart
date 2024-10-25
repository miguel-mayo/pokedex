import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/captured/views/captured_page.dart';
import 'package:pokedex/home/views/home_page.dart';
import 'package:pokedex/pokemon_detail/views/pokemon_detail_page.dart';
import 'package:pokedex/shared/shared.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

enum AppRoutes {
  home(
    'home',
    '/',
  ),
  captured(
    'captured',
    '/captured',
  ),
  pokemon(
    'pokemon',
    '/pokemon',
  );

  const AppRoutes(
    this.routeName,
    this.path,
  );

  final String routeName;
  final String path;
}

List<NavigationDestination> destinations(BuildContext context) => [
      NavigationDestination(
        label: 'Home',
        icon: Icon(
          Icons.home,
          color: context.colors.surface,
        ),
        route: AppRoutes.home.path,
      ),
      NavigationDestination(
        label: 'Captured',
        icon: const Icon(Icons.circle_notifications),
        route: AppRoutes.captured.path,
        child: Image.asset(
          'assets/images/pokeball_icon.png',
          height: 24,
          width: 24,
          fit: BoxFit.contain,
        ),
      ),
      NavigationDestination(
        label: 'Settings',
        icon: Icon(
          Icons.settings,
          color: context.colors.surface,
        ),
        route: AppRoutes.home.path,
      ),
    ];

class NavigationDestination {
  const NavigationDestination({
    required this.route,
    required this.label,
    required this.icon,
    this.child,
  });

  final String route;
  final String label;
  final Icon icon;
  final Widget? child;
}

final GoRouter appRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: AppRoutes.home.path,
  navigatorKey: _rootNavigatorKey,
  errorBuilder: (context, state) => const LoadingPage(),
  routes: [
    GoRoute(
      name: AppRoutes.home.routeName,
      path: AppRoutes.home.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const HomePage(),
      ),
    ),
    GoRoute(
      name: AppRoutes.captured.routeName,
      path: AppRoutes.captured.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const CapturedPage(),
      ),
    ),
    GoRoute(
      name: AppRoutes.pokemon.routeName,
      path: AppRoutes.pokemon.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: PokemonDetailPage(
          pokemon: state.extra as PokemonModel,
          from: state.uri.queryParameters['from'] ?? '',
        ),
      ),
    ),
  ],
);

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
