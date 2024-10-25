import 'package:flutter/material.dart';
import 'package:pokedex/shared/shared.dart';

class PokemonSectionShimmer extends StatelessWidget {
  const PokemonSectionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Shimmer(
      child: Padding(
        padding: EdgeInsets.all(Spacing.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerLoading(
                isLoading: true,
                child: ShimmerRectangle(width: 100, height: 24)),
            Separator.s,
            ShimmerLoading(
                isLoading: true,
                child: ShimmerRectangle(width: 220, height: 16)),
          ],
        ),
      ),
    );
  }
}
