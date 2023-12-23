import 'package:flutter/material.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SizedBox(
        width: 100,
        child: Divider(
          thickness: 1,
          color: Colors.black,
          endIndent: 20,
          indent: 20,
        ));
}
