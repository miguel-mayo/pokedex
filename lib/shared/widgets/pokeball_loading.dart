import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PokeballLoading extends StatefulWidget {
  const PokeballLoading({
    super.key,
    this.width = 50,
    this.height = 50,
  });

  final double width;
  final double height;

  @override
  State<PokeballLoading> createState() => _PokeballLoadingState();
}

class _PokeballLoadingState extends State<PokeballLoading>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/json/loading_pokeball_2.json',
        width: widget.width,
        height: widget.height,
        fit: BoxFit.cover,
        repeat: true,
        controller: _controller,
        onLoaded: (composition) {
          // Configure the AnimationController with the duration of the
          // Lottie file and start the animation.
          _controller
            ..duration = composition.duration
            ..repeat();
        },
      ),
    );
  }
}
