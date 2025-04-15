import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade100, //set the background color
      child: Center(
        child: Text(
          "Notes Page",
          style: TextStyle(color: Colors.black), //Set text color
        ),
      ),
    );
  }
}


