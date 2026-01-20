import 'package:flutter/material.dart';
import '../screens/addedit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  final List<String> names = ["Cvit", "Aung Aung", "Kyaw Kyaw", "MgMg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: names.length, 
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
            subtitle: const Text("Hello Everyone! How are you"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
                  child: const Text("Edit", style: TextStyle(color: Colors.black)),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 226, 62, 40)),
                  child: const Text("Delete", style: TextStyle(color: Colors.white)),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Second()),
          );
        },
        label: const Text("Add"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}