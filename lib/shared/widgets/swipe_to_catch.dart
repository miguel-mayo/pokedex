import 'package:flutter/material.dart';
import 'package:pokedex/shared/extensions.dart';
import 'package:pokedex/shared/shared.dart';

class SwipeToCatch extends StatefulWidget {
  final VoidCallback onUnlock;
  final String imagePath;

  const SwipeToCatch({
    super.key,
    required this.onUnlock,
    required this.imagePath,
  });

  @override
  State<SwipeToCatch> createState() => _SwipeToCatchState();
}

class _SwipeToCatchState extends State<SwipeToCatch>
    with SingleTickerProviderStateMixin {
  double _dragOffset = 0.0;
  final double _maxHeight = 68;
  bool _unlocked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        setState(() {
          // Actualizamos la posición de la imagen mientras deslizamos
          _dragOffset -= details.delta.dy;
          // Limitar el desplazamiento a un rango de [0, _screenHeight]
          _dragOffset = _dragOffset.clamp(0.0, _maxHeight);
        });
      },
      onVerticalDragEnd: (details) {
        // Si la imagen está cerca de la parte superior, consideramos que el swipe está completo
        if (_dragOffset > 50.0) {
          setState(() {
            _unlocked = true;
            widget.onUnlock();
          });
        } else {
          // Si no se completó el swipe, volvemos la imagen abajo
          setState(() {
            _dragOffset = 0;
          });
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.colors.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(BorderRadiusSize.xl),
            ),
            height: 120,
            width: 52,
          ),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.keyboard_arrow_up_rounded,
                  color: context.colors.primary,
                ),
                Icon(
                  Icons.keyboard_arrow_up_rounded,
                  color: context.colors.primary,
                ),
                Icon(
                  Icons.keyboard_arrow_up_rounded,
                  color: context.colors.primary,
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            bottom: _unlocked ? _maxHeight : _dragOffset,
            child: Image.asset(
              widget.imagePath,
              width: 52,
              height: 52,
            ),
          ),
        ],
      ),
    );
  }
}
