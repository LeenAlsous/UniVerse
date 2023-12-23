import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class CategoriesContainer extends StatelessWidget {
 final IconData? icon;
 final Widget label;
 final void Function()? onTap;
  const CategoriesContainer({Key? key, this.icon, required this.label, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 80.w,
        height: 15.h,
        decoration: BoxDecoration(
            color: const Color(0xFFFDFCFC),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey, blurRadius: 9, spreadRadius: 1)
            ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(height: 2.h,),
            label,
          ],
        ),
      ),
    );
  }
}
