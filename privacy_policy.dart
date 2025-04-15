import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100, //set the background color
      child: Center(
        child: Text(
          "Privacy Policy Page",
          style: TextStyle(color: Colors.black), //Set text color
        ),
      ),
    );
  }
}


