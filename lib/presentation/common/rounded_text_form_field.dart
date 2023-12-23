import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RoundedTextFormField extends StatefulWidget {
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final String? hintText;
  final String label;
  final double? width;
  final double? height;
  final TextAlign textAlign;
  final ValueChanged? onSubmitted;
  final ValueChanged? onChanged;
  const RoundedTextFormField({
    Key? key,
    required this.label,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.validator,
    this.hintText,
    this.obscureText = false,
    this.width,
    this.height,
    this.textAlign = TextAlign.start,
    this.onSubmitted,
    this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedTextFormField> createState() => _RoundedTextFormFieldState();
}

class _RoundedTextFormFieldState extends State<RoundedTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 2.w,
                bottom: 2.w),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(widget.label),
            ),
          ),
          TextFormField(
            textAlign: widget.textAlign,
            obscureText: widget.obscureText,
            controller: widget.controller,
            validator: widget.validator,
            onFieldSubmitted: widget.onSubmitted,
            onChanged: widget.onChanged,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                hintText: widget.hintText,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(50)),
                prefixIcon: widget.prefixIcon,
                suffixIcon: widget.suffixIcon),
          ),
        ],
      ),
    );
  }
}
