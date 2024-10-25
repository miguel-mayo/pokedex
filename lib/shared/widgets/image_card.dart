import 'package:flutter/material.dart';
import 'package:pokedex/shared/shared.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.image,
    required this.title,
    required this.header,
    this.clickable = false,
    this.scrollDirection = Axis.vertical,
  });

  final Widget image;
  final String title;
  final Widget header;
  final bool clickable;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: clickable ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: Spacing.m),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.xs,
                vertical: Spacing.xs,
              ),
              width: scrollDirection == Axis.vertical
                  ? double.infinity
                  : context.screenWidth * 0.4,
              height: scrollDirection == Axis.vertical
                  ? double.infinity
                  : context.screenWidth * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(BorderRadiusSize.xl),
                color: context.colors.surfaceContainer,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title.capitalize,
                    style: context.titleSmall!.copyWith(
                      color: context.colors.onSurfaceVariant,
                      height: 0.8,
                    ),
                  ),
                  Separator.xxs,
                  header,
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: Spacing.xs,
            child: image,
          ),
        ],
      ),
    );
  }
}
