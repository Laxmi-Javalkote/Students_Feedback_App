import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown, //set the background color
      child: Center(
        child: Text(
          "Settings Page",
          style: TextStyle(color: Colors.black), //Set text color
        ),
      ),
    );
  }
}


