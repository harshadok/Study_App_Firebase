import 'package:flutter/material.dart';

class AppCircleButton extends StatelessWidget {
  const AppCircleButton(
      {Key? key, required this.chaild, this.color, this.onTap, this.width = 60})
      : super(key: key);
  final Widget chaild;
  final Color? color;
  final double width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
        shape: const CircleBorder(),
        type: MaterialType.transparency,
        clipBehavior: Clip.hardEdge,
        child: InkWell(child: chaild));
  }
}
