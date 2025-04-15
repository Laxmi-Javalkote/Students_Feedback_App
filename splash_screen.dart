import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentsfeedbackapp/dashboard_faculty.dart';
import 'package:studentsfeedbackapp/sign_in_student.dart';

import 'dashboard_student.dart';
class Splash_screen extends StatefulWidget{

  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => Splash_screenState();
}

class Splash_screenState extends State<Splash_screen> {

  static const String KEYLOGIN= "login";
 // static const String KEYLOGIN_S= "login";
  //static const String KEYLOGIN_F= "login";

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
    Color(0xfff84a91),
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
    //var isLoggedIn1 = sharedPref.getBool(KEYLOGIN_S);
    //var isLoggedIn2 = sharedPref.getBool(KEYLOGIN_F);
    //var isLoggedIn_S = sharedPref.getBool(KEYLOGIN_S);
    //var isLoggedIn_F = sharedPref.getBool(KEYLOGIN_F);

    //Here user is comming at dashboard_student after refreshing the screen whether it is teacher or student

    Timer(Duration(seconds:2),()
    {
      if (isLoggedIn != null) {
        if (isLoggedIn=true) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) =>
                  DashboardPage_student(),)); //dashboard activity for student
        }
       /* if(isLoggedIn2=true){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) =>
                  DashboardFaculty(),)); //dashboard activity for faculty
        } */
       else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>
                SignIn_student(),)); //login activity after logout
      }
    }

       else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => SignIn_student(),)); //login activity doing first time
      }
       //due to pushReplacement splash screen will not come after back press
    });



  }
}