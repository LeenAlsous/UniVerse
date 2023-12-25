import 'package:flutter/material.dart';
class Budget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Center(
              child: Text(
            'Manage your Budget',
            style: TextStyle(fontSize: 25),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: MyForm(),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _textController = TextEditingController();
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20), // Add some spacing
        ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.network(
                'https://t3.ftcdn.net/jpg/02/20/61/32/240_F_220613224_ndm5grtS0xb65NZ0yJYSLevh54esqPdU.jpg')),
        const SizedBox(height: 20), // Add some spacing

        // Label
        const Center(
          child: Text(
            'Enter your expense value here:',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15), // Add some spacing

        // Text Field
        TextField(
          keyboardType: TextInputType.number,
          controller: _textController,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.money, color: Colors.purple),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.purple, width: 3),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 25.0, horizontal: 16.0),
          ),
        ),

        const SizedBox(height: 50),
        const Center(
          child: Text(
            "What do you often spend your money on??",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            const Text('Food',
                style: TextStyle(
                  fontSize: 25,
                )),
            Checkbox(
              value: isChecked2,
              onChanged: (value) {
                setState(() {
                  isChecked2 = value!;
                });
              },
            ),
            const Text('Transportation',
                style: TextStyle(
                  fontSize: 25,
                )),
            Checkbox(
              value: isChecked3,
              onChanged: (value) {
                setState(() {
                  isChecked3 = value!;
                });
              },
            ),
            const Text('Activities',
                style: TextStyle(
                  fontSize: 25,
                )),
            const SizedBox(height: 50),
            const Center(
              child: Text(
                'How much do you spend on Food??',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15), // Add some spacing

            // Text Field
            TextField(
              keyboardType: TextInputType.number,
              controller: _textController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.money, color: Colors.purple),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.purple, width: 3),
                ),
                fillColor: Colors.grey[100],
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
              ),
            ),
            const SizedBox(height: 50),
            const Center(
              child: Text(
                'How much do you spend on transportation??',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15), // Add some spacing

            // Text Field
            TextField(
              keyboardType: TextInputType.number,
              controller: _textController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.money, color: Colors.purple),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.purple, width: 3),
                ),
                fillColor: Colors.grey[100],
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
              ),
            ),
            const SizedBox(height: 50),

            const Center(
              child: Text(
                'How much do you spend on Activities or on other things??',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15), // Add some spacing

            // Text Field
            TextField(
              keyboardType: TextInputType.number,
              controller: _textController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.money, color: Colors.purple),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.purple, width: 3),
                ),
                fillColor: Colors.grey[100],
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(150, 50),
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],

        ),
        SizedBox(height: 50,),
        // Display the entered text
      ],
    );
  }
}
