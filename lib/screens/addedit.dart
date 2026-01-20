import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Add New Data"),
      backgroundColor: Colors.greenAccent,
    ),
    body: Padding(
      padding: EdgeInsetsGeometry.all(20),
      child: Column(
        children: [
          TextFormField(
              decoration:  InputDecoration(
                hintText: "Enter Your Title",
                labelText: "Your Title",

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color.fromARGB(255, 77, 41, 207), width: 2),
                ),
              ),
          ),
          SizedBox(height: 20,),

          TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Your Description",
                labelText: "Your Description",

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Color.fromARGB(255, 77, 41, 207), width: 2),
                ),
              ),
          ),
          SizedBox(height: 20,),

          Align(
            alignment: Alignment.centerLeft,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent, 
                    foregroundColor: Colors.black,
                    side: const BorderSide(color: Color.fromARGB(255, 28, 167, 209), width: 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: (){},
                child: const Text("Submit"),
              ),
            ),
        ],
      ),
    ),
  );
}
}