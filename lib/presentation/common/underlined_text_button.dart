import 'package:flutter/material.dart';

class UnderlinedTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const UnderlinedTextButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text, style: TextStyle(decoration: TextDecoration.underline),),
      style: TextButton.styleFrom(foregroundColor: Theme.of(context).primaryColor),
    );
  }
}
