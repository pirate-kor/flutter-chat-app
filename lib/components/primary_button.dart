import 'package:chatapp/contants/colors.dart';
import 'package:chatapp/contants/paddings.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.text,
      required this.press,
      this.color = primaryColor,
      this.padding = const EdgeInsets.all(defaultPadding * 0.75)})
      : super(key: key);

  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      padding: padding,
      minWidth: double.infinity,
      color: color,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
