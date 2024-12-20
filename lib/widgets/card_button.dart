import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    super.key,
    this.onPressed,
    this.color,
    this.image,
    this.title,
    this.padding,
  });
  final VoidCallback? onPressed;
  final Color? color;
  final Image? image;
  final String? title;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: onPressed,
        color: color,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AspectRatio(aspectRatio: 4 / 3, child: image),
            Text(title??""),
          ],
        ),
      ),
    );
  }
}
