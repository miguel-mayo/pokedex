import 'package:flutter/material.dart';
import 'package:pokedex/shared/shared.dart';

class ImageBackground extends StatelessWidget {
  const ImageBackground(
      {super.key, required this.asset, required this.child, this.baseColor});

  final String asset;
  final Widget child;
  final Color? baseColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 32,
          right: -60,
          child: ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    baseColor?.withOpacity(0.99) ??
                        Colors.grey.withOpacity(0.99),
                    baseColor?.withOpacity(0.7) ?? Colors.grey.withOpacity(0.7),
                    Colors.transparent,
                  ],
                  stops: const [
                    0.0,
                    0.5,
                    0.9
                  ]).createShader(bounds);
            },
            child: Image.asset(
              asset,
              width: context.screenHeight / 3,
              height: context.screenHeight / 3,
              fit: BoxFit.cover,
            ),
          ),
        ),
        child,
      ],
    );
  }
}
