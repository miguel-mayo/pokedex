import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/captured/cubit/captured_cubit.dart';
import 'package:pokedex/router/router.dart';
import 'package:pokedex/shared/shared.dart';

class CapturedPage extends StatelessWidget {
  const CapturedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CapturedCubit()..init(),
      child: const CapturedView(),
    );
  }
}

class CapturedView extends StatelessWidget {
  const CapturedView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CapturedCubit, CapturedState>(
        listenWhen: (previous, current) =>
            previous.mostFrequentType != current.mostFrequentType,
        listener: (context, state) {
          _updateBaseColor(context, state.mostFrequentType);
        },
        builder: (context, state) {
          final typeColor = state.mostFrequentType != null
              ? PokemonTypeHelper.getColorFromName(
                  state.mostFrequentType!,
                )
              : context.colors.primary;

          return Scaffold(
            appBar: AppBar(
              title: const Text('My Pokédex'),
              centerTitle: false,
              leading: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Spacing.xs, vertical: Spacing.xs),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () => context.pop(),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Spacing.xs, vertical: Spacing.xs),
                  child: IconButton(
                    icon: const Icon(Icons.filter_list),
                    onPressed: () {
                      DialogHelper.openBottomSheet(context,
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(Spacing.m),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Select pokémon types',
                                  style: context.titleMedium,
                                ),
                                Wrap(
                                  spacing: Spacing.xs,
                                  runSpacing: Spacing.xs,
                                  children: [
                                    for (var type in state.availableTypes)
                                      GestureDetector(
                                        onTap: () {
                                          context
                                              .read<CapturedCubit>()
                                              .updateTypesFilter(type);
                                          Navigator.of(context).pop();
                                        },
                                        child: InfoChip(
                                          title: type.name,
                                          icon:
                                              PokemonTypeHelper.getIconFromName(
                                                  type.name),
                                          color: PokemonTypeHelper
                                              .getColorFromName(type.name),
                                          backgroundColor:
                                              context.colors.surfaceBright,
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ));
                    },
                  ),
                ),
              ],
            ),
            body: ImageBackground(
              baseColor: typeColor,
              asset: 'assets/images/pokeball_black.png',
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Spacing.m,
                      ),
                      child: _TypeFilterTile(),
                    ),
                    Separator.s,
                    if (state.capturedPokemons.isEmpty) ...{
                      const _EmptyPokedex()
                    } else ...{
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.m,
                        ),
                        child: _CoachTypeTile(
                          type: state.mostFrequentType ?? '',
                          typeColor: typeColor,
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        child: ListView.separated(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Spacing.m,
                            vertical: Spacing.s,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) =>
                              Separator.horizontals,
                          itemCount: state.capturedPokemons.length,
                          itemBuilder: (context, index) {
                            final pokemon = state.capturedPokemons[index];
                            return GestureDetector(
                              onTap: () async {
                                final cubit = context.read<CapturedCubit>();
                                await context.pushNamed(
                                  AppRoutes.pokemon.routeName,
                                  extra: pokemon,
                                  queryParameters: {
                                    'from': 'captured',
                                  },
                                );

                                // Refresh list
                                cubit.init().then((_) {
                                  // Update base color
                                  _updateBaseColor(
                                      context, cubit.state.mostFrequentType);
                                });
                              },
                              child: ImageCard(
                                clickable: true,
                                scrollDirection: Axis.horizontal,
                                image: Hero(
                                  tag: '${pokemon.id}_captured',
                                  child: CachedNetworkImageContainer(
                                    width: 100,
                                    height: 100,
                                    imageUrl: pokemon
                                        .sprites.other!.home!.frontShiny!,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                title: pokemon.name,
                                header: pokemon.types.isNotEmpty
                                    ? Wrap(
                                        spacing: Spacing.xxs,
                                        runSpacing: Spacing.xxs,
                                        children: pokemon.types.map((type) {
                                          return PokemonTypeHelper
                                              .getIconFromName(
                                            type.type.name,
                                          );
                                        }).toList(),
                                      )
                                    : const SizedBox(),
                              ),
                            );
                          },
                        ),
                      )
                    }
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _updateBaseColor(BuildContext context, String? type) {
    final themeProvider = ThemeProvider.of(context);
    final settings = themeProvider.settings.value;

    final mainColor = type != null
        ? PokemonTypeHelper.getColorFromName(type)
        : settings.sourceColor;

    UpdateBaseColorHelper.updateBaseColor(context, mainColor ?? kRed);
  }
}

class _TypeFilterTile extends StatelessWidget {
  const _TypeFilterTile();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CapturedCubit>().state;
    return Wrap(
      spacing: Spacing.xxs,
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        for (var type in state.typesFilter)
          InfoChip(
              title: type.name,
              icon: PokemonTypeHelper.getIconFromName(type.name),
              color: PokemonTypeHelper.getColorFromName(type.name),
              backgroundColor: context.colors.surfaceBright,
              deleteIcon: const Icon(Icons.cancel, size: 24),
              onDeleted: () =>
                  context.read<CapturedCubit>().updateTypesFilter(type)),
      ],
    );
  }
}

class _CoachTypeTile extends StatelessWidget {
  const _CoachTypeTile({
    required this.typeColor,
    required this.type,
  });

  final Color? typeColor;
  final String type;

  @override
  Widget build(BuildContext context) {
    return type.isEmpty
        ? Text(
            'Your pokédex is equilibrated',
            style: context.titleMedium,
          )
        : Row(
            children: [
              PokemonTypeHelper.getIconFromName(type),
              Separator.horizontalxs,
              RichText(
                text: TextSpan(
                  style: context.titleMedium,
                  children: [
                    const TextSpan(
                      text: 'You are a ',
                    ),
                    TextSpan(
                      text: type.toUpperCase(),
                      style: context.titleSmall!.copyWith(
                        color: typeColor,
                      ),
                    ),
                    const TextSpan(
                      text: ' Coach!',
                    )
                  ],
                ),
              ),
            ],
          );
  }
}

class _EmptyPokedex extends StatelessWidget {
  const _EmptyPokedex();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Spacing.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/pokeball_icon.png',
            width: 100,
            height: 100,
          ),
          Text(
            'You have not captured any Pokémon',
            style: context.titleMedium,
            textAlign: TextAlign.center,
          ),
          Separator.s,
          TextButton(
            child: const Text('Catch them all!'),
            onPressed: () => context.goNamed(AppRoutes.home.routeName),
          ),
        ],
      ),
    );
  }
}
