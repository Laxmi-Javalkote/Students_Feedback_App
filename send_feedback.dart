import 'package:flutter/material.dart';

class SendFeedbackPage extends StatelessWidget {
  const SendFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink.shade100, //set the background color
      child: Center(
        child: Text(
          "Send Feedback Page",
          style: TextStyle(color: Colors.black), //Set text color
        ),
      ),
    );
  }
}


