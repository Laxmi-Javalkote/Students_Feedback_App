import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100, //set the background color
      child: Center(
        child: Text(
          "Events Page",
          style: TextStyle(color: Colors.black), //Set text color
        ),
      ),
    );
  }
}


