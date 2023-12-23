import 'package:flutter/material.dart';

class ResizableButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double ?width;
  final double ?height;
  const ResizableButton({Key? key, required this.text, required this.onPressed, this.width = 350, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Text(text),
      ),
    );
  }
}
