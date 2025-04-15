import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:studentsfeedbackapp/sign_up.dart';
class home1 extends StatefulWidget{
  const home1({super.key});

  @override
  State<home1> createState() =>_home1State();

}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(

        //Gradient code
        padding: const EdgeInsets.only(top:90.0),
    height:MediaQuery.of(context).size.height,
    width:MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
    gradient:LinearGradient(colors:[
    Color(0xffb51837),
    Color(0xff661c3a),
    Color(0xff301939),
    ],begin:Alignment.topLeft,end:Alignment.topRight)),
    ),
    );
  }
}