import 'package:flutter/material.dart';

import '../constants.dart';


class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? iconColor;

  const IconContent(
      {Key? key, required this.icon, required this.label, this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80, color: iconColor),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
