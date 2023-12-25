import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uni_verse/presentation/common/categories_container.dart';
import 'package:uni_verse/presentation/time_management.dart';

class HomePage extends StatelessWidget {
  static String route = "HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 100.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Choose what you wanna manage', style: TextStyle(
            fontSize:
            Theme.of(context).textTheme.bodyLarge?.fontSize), textAlign: TextAlign.center,),
            SizedBox(height: 3.h,),
            CategoriesContainer(label: const Text('Time management'), icon: CupertinoIcons.time_solid, onTap: (){Navigator.pushNamed(context, TimeManagement.route);},),
            SizedBox(
              height: 5.h,
            ),
            CategoriesContainer(label: const Text('Budgeting'), icon: CupertinoIcons.time_solid, onTap: (){},),
            SizedBox(
              height: 5.h,
            ),
            CategoriesContainer(label: const Text('Map'), icon: CupertinoIcons.time_solid, onTap: (){},),
            SizedBox(
              height: 5.h,
            ),
            CategoriesContainer(label: const Text('Mental health'), icon: CupertinoIcons.time_solid, onTap: (){},),
          ],
        ),
      ),
    );
  }
}
