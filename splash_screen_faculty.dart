import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentsfeedbackapp/dashboard_faculty.dart';
import 'package:studentsfeedbackapp/sign_in_faculty.dart';
import 'package:studentsfeedbackapp/sign_in_student.dart';

import 'dashboard_student.dart';
class Splash_screen_faculty extends StatefulWidget{

  const Splash_screen_faculty({super.key});

  @override
  State<Splash_screen_faculty> createState() => Splash_screen_facultyState();
}

class Splash_screen_facultyState extends State<Splash_screen_faculty> {

  static const String KEYLOGIN= "login";
  @override
  void initState() {

    whereToGo();
    super.initState();



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          padding: const EdgeInsets.only(top:50.0),
          height:MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient:LinearGradient(colors:[
                Color(0xffb51837),
                Color(0xff661c3a),
                Color(0xff301939),
              ],begin:Alignment.topLeft,end:Alignment.topRight)),
          child:const Center(child:Text('Students Feedback App', style:TextStyle(
              fontSize:34,
              fontWeight: FontWeight.w700,
              color:Colors.white
          ),)),
        )
    );
  }

  void whereToGo() async {

    var sharedPref = await SharedPreferences.getInstance();

    var isLoggedIn = sharedPref.getBool(KEYLOGIN);

    Timer(Duration(seconds:2),(){

      if(isLoggedIn!=null){
        if(isLoggedIn){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => DashboardFaculty(),)); //dashboard activity
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => SignIn_faculty(),)); //login activity after logout
        }
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => SignIn_faculty(),)); //login activity doing first time
      }
      //due to pushReplacement splash screen will not come after back press
    });



  }
}