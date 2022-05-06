import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    Key? key,
    required this.icon,
    required this.title,
    this.iconSize = 25,
    this.textSize = 16,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: iconSize,
        ),
        Text(
          title,
          style: TextStyle(
            color: kWhiteColor,
            fontSize: textSize,
          ),
        ),
      ],
    );
  }
}
