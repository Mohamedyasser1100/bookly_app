import 'package:flutter/material.dart';

class SlidingTextAnimated extends StatelessWidget {
  const SlidingTextAnimated({
    super.key,
    required this.SlidingAnimation,
  });

  final Animation<Offset> SlidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: SlidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: SlidingAnimation,
            child: const Text(
              'Read free books',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          );
        });
  }
}
