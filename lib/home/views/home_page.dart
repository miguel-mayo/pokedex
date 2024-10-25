import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/home/home.dart';
import 'package:pokedex/router/router.dart';
import 'package:pokedex/shared/shared.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        repository: context.read<PokeApiRepository>(),
      ),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeCubit>().init(
            pageSize: context.isMobile ? 10 : 12,
          );

      scrollController.addListener(() {
        FocusManager.instance.primaryFocus?.unfocus();
        final hasReachedEnd = context.read<HomeCubit>().state.hasReachedEnd;
        if (scrollController.position.pixels ==
                scrollController.position.maxScrollExtent &&
            !hasReachedEnd) {
          scrollController.animateTo(
            scrollController.position.maxScrollExtent + 80,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );

          context.read<HomeCubit>().nextPage(
                pageSize: context.isMobile ? 10 : 12,
              );
        }
      });

      UpdateBaseColorHelper.updateBaseColor(
        context,
        kRed,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const _PokedexButton(),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return ImageBackground(
              asset: 'assets/images/pokeball_black.png',
              baseColor: context.colors.primary,
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverAppBar(
                    centerTitle: false,
                    floating: true,
                    snap: true,
                    expandedHeight: 130.0,
                    elevation: 0,
                    actions: const [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Spacing.s,
                        ),
                        child: BrightnessToggle(),
                      ),
                    ],
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Available Pokemons', style: context.titleMedium),
                        Row(
                          children: [
                            Text('Kanto ', style: context.titleLarge),
                            Image.asset(
                              'assets/images/pokeball_icon.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    flexibleSpace: const FlexibleSpaceBar(
                      background: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Spacing.m,
                          vertical: Spacing.s,
                        ),
                        child: _FilterTile(),
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(Spacing.s),
                    sliver: state.pokedexStatus.isLoading
                        ? const HomePageShimmer()
                        : _PokemonsGrid(
                            pokemons: state.pokemons,
                          ),
                  ),
                  if (state.pokemonStatus.isLoading)
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 110, child: PokeballLoading()),
                    ),
                ],
              ),
            );
          },
        ));
  }
}

class _PokedexButton extends StatelessWidget {
  const _PokedexButton();

  @override
  Widget build(BuildContext context) {
    return ShiningEffect(
      child: IconButton(
        style: ButtonStyle(
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 0,
            ),
          ),
          backgroundColor: WidgetStateProperty.all(
            context.colors.surfaceBright,
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(BorderRadiusSize.xl),
            ),
          ),
        ),
        onPressed: () {
          context.pushNamed(AppRoutes.captured.routeName).then((value) {
            UpdateBaseColorHelper.updateBaseColor(context, kRed);
          });
        },
        icon: Image.asset(
          'assets/images/pokeball_icon.png',
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}

class _FilterTile extends StatefulWidget {
  const _FilterTile();

  @override
  State<_FilterTile> createState() => _FilterTileState();
}

class _FilterTileState extends State<_FilterTile> {
  Timer? debounce;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
            style: context.bodyMedium,
            decoration: const InputDecoration(
              hintText: 'Search by name',
            ),
            onChanged: (value) {
              if (debounce?.isActive ?? false) debounce?.cancel();
              debounce = Timer(const Duration(milliseconds: 600), () {
                context.read<HomeCubit>().updateNameFilter(value);
              });
            }),
      ],
    );
  }
}

class _PokemonsGrid extends StatelessWidget {
  const _PokemonsGrid({
    required this.pokemons,
  });

  final List<PokemonModel> pokemons;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.isMobile ? 2 : 3,
        childAspectRatio: 1.1,
        crossAxisSpacing: Spacing.m,
        mainAxisSpacing: Spacing.xxs,
      ),
      itemCount: pokemons.length,
      itemBuilder: (context, index) {
        final pokemon = pokemons[index];

        return GestureDetector(
          onTap: () async {
            await context.pushNamed(
              AppRoutes.pokemon.routeName,
              extra: pokemon,
              queryParameters: {
                'from': 'home',
              },
            );

            UpdateBaseColorHelper.updateBaseColor(context, kRed);
          },
          child: ImageCard(
            clickable: true,
            image: Hero(
              tag: '${pokemon.id}_home',
              child: CachedNetworkImageContainer(
                width: context.isMobile ? 100 : 220,
                height: context.isMobile ? 100 : 220,
                imageUrl: pokemon.sprites.other!.home!.frontShiny!,
                fit: BoxFit.contain,
              ),
            ),
            title: pokemon.name,
            header: pokemon.types.isNotEmpty
                ? Wrap(
                    spacing: Spacing.xxs,
                    runSpacing: Spacing.xxs,
                    children: pokemon.types.map((type) {
                      return PokemonTypeHelper.getIconFromName(
                        type.type.name,
                      );
                    }).toList(),
                  )
                : const SizedBox(),
          ),
        );
      },
    );
  }
}
