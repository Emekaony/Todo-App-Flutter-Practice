import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:todo_app/todo_widget.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void buttonPressed() {
    if (kDebugMode) {
      print("Button pressed");
    }
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
            children: [Todo(onPress: buttonPressed)],
          ),
        ),
      ),
    );
  }
}
