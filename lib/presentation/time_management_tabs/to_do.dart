import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uni_verse/presentation/common/rounded_text_form_field.dart';
import 'package:uni_verse/presentation/common/to_do_tile.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
           body: Column(
             children: [
               Container(height: 70.h,),
               Align(
                 alignment: Alignment.bottomRight,
                 child: Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: FloatingActionButton(
      
                     child: Icon(Icons.add),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return ConstrainedBox(
                                  constraints: BoxConstraints(maxHeight: 10.h),
                                  child: AlertDialog(title: const Text('Add to-do'),
                                    content: TextFormField(),
                                    actions: [
                                      TextButton(onPressed: (){Navigator.pop(context);}, child: const Text('Add')),
                                      TextButton(onPressed: (){Navigator.pop(context);}, child: const Text('Cancel'))
                                    ],
                                  ),
                                );
                              });
                        },
                        ),
                 ),
               ),
             ],
           )
      ),
    );
  }
}
