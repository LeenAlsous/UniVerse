import 'package:flutter/material.dart';
import 'package:uni_verse/presentation/common/Colored_check_box.dart';
class ToDoTile extends StatelessWidget {
  final String label;
  const ToDoTile({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      leading: ColoredCheckBox(),
    );
  }
}
