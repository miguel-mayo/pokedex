import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/pokemon_detail/cubit/pokemon_detail_cubit.dart';
import 'package:pokedex/pokemon_detail/views/pokemon_section_shimmer.dart';
import 'package:pokedex/shared/shared.dart';

class PokemonDetailPage extends StatelessWidget {
  const PokemonDetailPage(
      {super.key, required this.pokemon, required this.from});

  final PokemonModel pokemon;
  final String from;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokemonDetailCubit(
        repository: context.read<PokeApiRepository>(),
      )..init(pokemon),
      child: PokemonDetailView(
        pokemon: pokemon,
        from: from,
      ),
    );
  }
}

class PokemonDetailView extends StatefulWidget {
  const PokemonDetailView({
    super.key,
    required this.pokemon,
    required this.from,
  });

  final PokemonModel pokemon;
  final String from;

  @override
  State<PokemonDetailView> createState() => _PokemonDetailViewState();
}

class _PokemonDetailViewState extends State<PokemonDetailView> {
  @override
  void initState() {
    super.initState();

    final state = context.read<PokemonDetailCubit>().state;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      UpdateBaseColorHelper.updateBaseColor(
          context,
          PokemonTypeHelper.getColorFromName(
              state.pokemon.types.first.type.name)!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<PokemonDetailCubit, PokemonDetailState>(
            buildWhen: (previous, current) =>
                previous.pokemonSpecie != current.pokemonSpecie ||
                previous.isStored != current.isStored,
            builder: (context, state) {
              return Stack(children: [
                CustomScrollView(
                  slivers: [
                    SliverPadding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Spacing.m,
                        ),
                        sliver: SliverAppBar(
                          leading: IconButton(
                            onPressed: () {
                              context.pop();
                            },
                            icon: const Icon(Icons.arrow_back),
                          ),
                          actions: [
                            if (state.isStored)
                              // Captured! tag
                              const _CapturedTag()
                          ],
                        )),
                    SliverList(
                        delegate: SliverChildListDelegate(
                      [
                        _PokemonImage(
                          tag: '${widget.pokemon.id}_${widget.from}',
                          imageUrl:
                              widget.pokemon.sprites.other!.home!.frontShiny!,
                          backgroundColor: PokemonTypeHelper.getColorFromName(
                                state.pokemon.types.first.type.name,
                              ) ??
                              context.colors.primary,
                        ),
                        _PokemonTitle(
                          pokemon: state.pokemon,
                        ),
                        state.pokemon.types.isNotEmpty
                            ? Wrap(
                                spacing: Spacing.xxs,
                                runSpacing: Spacing.xxs,
                                alignment: WrapAlignment.center,
                                children: state.pokemon.types.map((type) {
                                  return InfoChip(
                                    title: type.type.name.capitalize,
                                    color: PokemonTypeHelper.getColorFromName(
                                      type.type.name,
                                    ),
                                    icon: PokemonTypeHelper.getIconFromName(
                                      type.type.name,
                                    ),
                                  );
                                }).toList(),
                              )
                            : const SizedBox(),
                        if (state.status.isLoading)
                          const PokemonSectionShimmer()
                        else ...{
                          _PokemonAbout(
                            state.pokemon,
                            state.pokemonSpecie,
                          ),
                          _PokemonStats(
                            stats: widget.pokemon.stats,
                          )
                        },
                        const SizedBox(height: 200),
                      ],
                    ))
                  ],
                ),
                if (!state.status.isLoading) ...{
                  if (state.isStored)
                    _ReleaseButton(
                      state.pokemon,
                    )
                  else
                    _SwipeUpToCatch(
                      state.pokemon,
                    ),
                }
              ]);
            }));
  }
}

class _CapturedTag extends StatelessWidget {
  const _CapturedTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
        backgroundColor: context.colors.tertiary,
        color: WidgetStatePropertyAll(context.colors.onTertiary),
        labelStyle: context.labelSmall,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BorderRadiusSize.xl),
        ),
        label: const Text('Captured!'));
  }
}

class _SwipeUpToCatch extends StatelessWidget {
  const _SwipeUpToCatch(this.pokemon);

  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SwipeToCatch(
              imagePath: 'assets/images/pokeball_icon.png',
              onUnlock: () {
                Future.delayed(const Duration(seconds: 2), () {
                  context.read<PokemonDetailCubit>().updateCaptured(pokemon);
                  DialogHelper.closeDialog(context);
                  ToastHelper.showInfo(
                    context,
                    title: 'Pokemon captured!',
                  );
                });
                DialogHelper.openFullscreenDialog(context,
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const PokeballLoading(
                            width: 250,
                            height: 250,
                          ),
                          Separator.l,
                          Text(
                            'Catching Pokemon ${pokemon.name}!',
                            style: context.headlineMedium,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ));
              },
            ),
            Text('Swipe up to catch', style: context.labelSmall),
          ],
        ),
      ),
    );
  }
}

class _ReleaseButton extends StatelessWidget {
  const _ReleaseButton(this.pokemon);

  final PokemonModel pokemon;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Align(
            alignment: Alignment.bottomCenter,
            child: OutlinedButton(
              onPressed: () {
                Future.delayed(const Duration(seconds: 2), () {
                  context.read<PokemonDetailCubit>().updateCaptured(pokemon);
                  DialogHelper.closeDialog(context);
                  ToastHelper.showInfo(
                    context,
                    title: 'Pokemon released!',
                  );
                });
                DialogHelper.openFullscreenDialog(context,
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const PokeballLoading(
                            width: 250,
                            height: 250,
                          ),
                          Separator.l,
                          Text(
                            'Releasing Pokemon ${pokemon.name}!',
                            style: context.headlineMedium,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ));
              },
              child: const Text('Release'),
            )));
  }
}

class _PokemonTitle extends StatelessWidget {
  const _PokemonTitle({
    required this.pokemon,
  });

  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        pokemon.name.capitalize,
        style: context.headlineMedium,
      ),
      Text(
        '#${pokemon.id}',
        style: context.titleMedium,
      ),
    ]);
  }
}

class _PokemonImage extends StatelessWidget {
  const _PokemonImage({
    required this.tag,
    required this.imageUrl,
    required this.backgroundColor,
  });

  final String tag;
  final String imageUrl;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: 1),
            duration: const Duration(seconds: 1),
            builder: (context, value, child) {
              return Container(
                width: (context.screenHeight * 0.33) * value,
                height: (context.screenHeight * 0.33) * value,
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: backgroundColor.withOpacity(0.1),
                  //     blurRadius: 90,
                  //     spreadRadius: 45,
                  //   ),
                  // ],
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      backgroundColor.withOpacity(1),
                      backgroundColor.withOpacity(0.7),
                      backgroundColor.withOpacity(0.3),
                      Colors.transparent,
                    ],
                    stops: const [0, 0.25, 0.75, 1],
                  ),
                ),
                padding: const EdgeInsets.all(Spacing.m),
              );
            }),
        Hero(
          tag: tag,
          child: CachedNetworkImageContainer(
            width: context.screenHeight * 0.33,
            height: context.screenHeight * 0.33,
            imageUrl: imageUrl,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}

class _PokemonAbout extends StatelessWidget {
  const _PokemonAbout(this.pokemon, this.pokemonSpecie);

  final PokemonModel pokemon;
  final PokemonSpecieModel pokemonSpecie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Spacing.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Species',
                      style: context.titleSmall,
                    ),
                    Text(
                      pokemonSpecie.genera
                          .firstWhere(
                            (element) =>
                                element.language.name ==
                                context.localization.localeName,
                          )
                          .genus,
                      style: context.bodyLarge!.copyWith(
                        color: context.colors.tertiary,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Separator.horizontalm,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Weight',
                    style: context.titleSmall,
                  ),
                  Text(
                    pokemon.weight.toString(),
                    style: context.bodyLarge!.copyWith(
                      color: context.colors.tertiary,
                    ),
                  ),
                ],
              ),
              Separator.horizontalm,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Height',
                    style: context.titleSmall,
                  ),
                  Text(
                    pokemon.height.toString(),
                    style: context.bodyLarge!.copyWith(
                      color: context.colors.tertiary,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _PokemonStats extends StatelessWidget {
  const _PokemonStats({
    required this.stats,
  });
  final List<Stat> stats;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.m,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Stats', style: context.titleMedium),
          ...stats.map((stat) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  stat.stat.name.capitalize,
                  style: context.labelMedium,
                ),
                Separator.horizontals,
                Expanded(
                  child: AnimatedProgressBar(
                    targetValue: stat.baseStat.toDouble(),
                  ),
                ),
                Separator.horizontals,
                Text(
                  stat.baseStat.toString(),
                  style: context.bodyLarge!.copyWith(
                    color: context.colors.tertiary,
                  ),
                ),
              ],
            );
          })
        ],
      ),
    );
  }
}
