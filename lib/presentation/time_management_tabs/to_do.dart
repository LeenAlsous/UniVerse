import 'package:flutter/material.dart';
import 'package:uni_verse/presentation/common/to_do_tile.dart';

class ToDo extends StatelessWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController todoController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
         body: Column(
           children: [
             Align(
               alignment: Alignment.topRight,
               child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return BottomSheet(
                                onClosing: () {},
                                builder: (context) {
                                  return SizedBox(
                                    height: 300,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Add to-do",
                                            style: TextStyle(fontSize: 22)),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextField(
                                            controller: todoController,
                                            decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 3, color: Colors.blue),
                                                    borderRadius:
                                                        BorderRadius.circular(25)),
                                                hintText: "To-Do"),
                                          ),
                                        ),
                                        ElevatedButton(
                                            onPressed: () {}, child: Text("Add"))
                                      ],
                                    ),
                                  );
                                });
                          });
                    },
                    icon: Icon(Icons.add)),
             ),
             ToDoTile(label: "study")
           ],
         )
    );
  }
}
