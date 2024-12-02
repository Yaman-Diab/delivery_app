import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.width,
    required this.height,
    required this.color,
    required this.iconColor,
  });
  final IconData icon;
  final double width;
  final double height;
  final double iconSize;
  final Color? color;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        icon: Icon(
          color: iconColor,
          icon,
          size: iconSize,
        ),
        onPressed: () {},
      ),
    );
  }
}
