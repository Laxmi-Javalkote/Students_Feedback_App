import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent.shade100, //set the background color
      child: Center(
        child: Text(
          "Contacts Page",
          style: TextStyle(color: Colors.black), //Set text color
        ),
      ),
    );
  }
}


