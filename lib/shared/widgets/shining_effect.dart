import 'package:flutter/material.dart';

class ShiningEffect extends StatefulWidget {
  final Widget child;

  const ShiningEffect({super.key, required this.child});

  @override
  State<ShiningEffect> createState() => _ShiningEffectState();
}

class _ShiningEffectState extends State<ShiningEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true); // Animación en bucle
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: [
                Colors.white.withOpacity(0.2),
                Colors.white.withOpacity(0.8),
                Colors.white.withOpacity(0.2),
              ],
              stops: const [
                0.0,
                0.5,
                1.0,
              ],
              begin: Alignment(-1.0 + 2.0 * _controller.value,
                  -1.0), // Inicia fuera del widget y termina fuera
              end: Alignment(1.0 - 2.0 * _controller.value,
                  1.0), // Controla el movimiento del brillo
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcATop,
          child: widget.child,
        );
      },
      child: widget.child,
    );
  }
}
