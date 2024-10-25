import 'package:flutter/material.dart';
import 'package:pokedex/shared/shared.dart';

class InfoChip extends StatelessWidget {
  const InfoChip({
    super.key,
    required this.title,
    this.color,
    this.icon,
    this.backgroundColor,
    this.deleteIcon,
    this.onDeleted,
  });

  final String title;
  final Color? color;
  final Color? backgroundColor;
  final Widget? icon;
  final Widget? deleteIcon;
  final VoidCallback? onDeleted;

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelStyle: context.labelSmall,
      backgroundColor: backgroundColor ?? context.colors.surfaceDim,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(BorderRadiusSize.xl),
      ),
      labelPadding: const EdgeInsets.symmetric(
        horizontal: Spacing.xxs,
        vertical: 0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.xxs,
        vertical: Spacing.xxs,
      ),
      label: Text(title),
      avatar: icon,
      deleteIcon: deleteIcon,
      onDeleted: onDeleted,
    );
  }
}
