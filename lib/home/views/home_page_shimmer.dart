import 'package:flutter/material.dart';
import 'package:pokedex/shared/shared.dart';

class HomePageShimmer extends StatelessWidget {
  const HomePageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Shimmer(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: context.isMobile ? 2 : 3,
            childAspectRatio: 1.1,
            crossAxisSpacing: Spacing.m,
            mainAxisSpacing: Spacing.m,
          ),
          itemCount: 10,
          itemBuilder: (context, index) => const _Tile(),
        ),
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile();

  @override
  Widget build(BuildContext context) {
    return const ShimmerLoading(
      isLoading: true,
      child: ShimmerRectangle(
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
