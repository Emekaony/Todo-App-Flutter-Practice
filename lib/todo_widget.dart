import "package:flutter/material.dart";

class Todo extends StatelessWidget {
  const Todo({required this.onPress, super.key});
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: const Color.fromARGB(255, 11, 88, 69),
      ),
      child: Row(
        children: [
          Text(
            "1. Clean",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Expanded(child: SizedBox()),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 10, 8, 92),
              foregroundColor: Colors.white,
            ),
            onPressed: onPress,
            child: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
