import 'package:flutter/material.dart';
import 'package:pokedex/shared/shared.dart';

class AnimatedProgressBar extends StatelessWidget {
  final double targetValue;

  const AnimatedProgressBar({
    super.key,
    required this.targetValue,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: targetValue / 100),
      duration: const Duration(seconds: 1),
      builder: (context, value, child) {
        return LinearProgressIndicator(
          value: value, // Valor animado entre 0 y 1
          backgroundColor: context.colors.surfaceContainer,
          color: context.colors.primary,
          minHeight: 8,
          borderRadius: BorderRadius.circular(
            BorderRadiusSize.m,
          ),
        );
      },
    );
  }
}
