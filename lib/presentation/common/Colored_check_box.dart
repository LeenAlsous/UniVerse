import 'package:flutter/material.dart';

class ColoredCheckBox extends StatefulWidget {
  const ColoredCheckBox({Key? key}) : super(key: key);

  @override
  State<ColoredCheckBox> createState() => _ColoredCheckBoxState();
}

class _ColoredCheckBoxState extends State<ColoredCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      activeColor: Theme.of(context).primaryColor,
    );
  }
}
