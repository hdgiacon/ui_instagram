import 'package:flutter/material.dart';

class StoryProgressBar extends StatefulWidget {
  const StoryProgressBar({super.key});

  @override
  State<StoryProgressBar> createState() => _StoryProgressBarState();
}

class _StoryProgressBarState extends State<StoryProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation animation;

  double beginAnim = 0.0;
  double endAnim = 1.0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    controller.forward();

    animation = Tween(begin: beginAnim, end: endAnim).animate(controller)
      ..addListener(() {
        setState(() {
          if (animation.value == endAnim) {
            controller.stop();

            controller.reset();
          }
        });
      });
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: animation.value,
      backgroundColor: Colors.grey.withOpacity(0.5),
      valueColor: const AlwaysStoppedAnimation<Color>(
        Colors.grey,
      ),
    );
  }
}
