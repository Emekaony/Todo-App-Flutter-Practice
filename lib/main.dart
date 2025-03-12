import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:todo_app/todo_widget.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> todos = [
    "Buy groceries",
    "Finish Flutter project",
    "Read a chapter of a book",
    "Go for a 30-minute walk",
    "Reply to emails",
    "Practice coding for 1 hour",
    "Plan next week's schedule",
    "Watch a tech talk or tutorial",
  ];

  void buttonPressed(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Tood List",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 10, 8, 92),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 0; i < todos.length; i++)
                Todo(item: todos[i], index: i, onPress: () => buttonPressed(i)),
            ],
          ),
        ),
      ),
    );
  }
}
