import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageContainer extends StatelessWidget {
  const CachedNetworkImageContainer({
    required this.imageUrl,
    this.width,
    this.height,
    super.key,
    this.borderRadius = BorderRadius.zero,
    this.colorFilter,
    this.boxShadow,
    this.child,
    this.errorWidget,
    this.fit,
    this.shape,
    this.border,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;
  final Border? border;
  final ColorFilter? colorFilter;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Widget? errorWidget;
  final BoxFit? fit;
  final BoxShape? shape;

  @override
  Widget build(BuildContext context) {
    return imageUrl.isEmpty
        ? Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              boxShadow: boxShadow,
            ),
            child: child,
          )
        : CachedNetworkImage(
            imageUrl: imageUrl,
            useOldImageOnUrlChange: true,
            imageBuilder: (context, imageProvider) => Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: shape != null ? null : borderRadius,
                border: border,
                shape: shape ?? BoxShape.rectangle,
                image: DecorationImage(
                  image: imageProvider,
                  fit: fit ?? BoxFit.cover,
                  colorFilter: colorFilter,
                ),
                boxShadow: boxShadow,
              ),
              child: child,
            ),
            // placeholder: (context, url) => Container(
            //   width: width,
            //   height: height,
            //   decoration: BoxDecoration(
            //     color: context.colors.primary,
            //     borderRadius: borderRadius,
            //   ),
            // ),
            fadeInCurve: Curves.easeInOut,
            fit: BoxFit.cover,
            placeholderFadeInDuration: const Duration(seconds: 500),
            errorWidget: (context, url, error) => Image.asset(
              'assets/images/placeholder.png',
              width: width,
              height: height,
            ),
          );
  }
}
