/*import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:studentsfeedbackapp/sign_up.dart';
class Onboarding extends StatefulWidget{
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() =>_OnboardingState();

  }

class _OnboardingState extends State<Onboarding> {
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

          child: Expanded ( child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("STUDENTS FEEDBACK",
                style:TextStyle(
                    color:Colors.white,
                    fontSize:27.0,
                    fontWeight:FontWeight.w500)
            ),
            const SizedBox(height:20.0,),

            CustomRadioButton(
        elevation: 0,
        //absoluteZeroSpacing: true,
        unSelectedColor: Theme.of(context).canvasColor,
        buttonLables: const [
          'Student',
          'Teacher',
        ],
        buttonValues: const [
          "STUDENT",
          "TEACHER",
        ],
        buttonTextStyle: const ButtonTextStyle(
            selectedColor: Colors.white,
            unSelectedColor: Colors.black,
            textStyle: TextStyle(fontSize: 16)),
        radioButtonValue: (value) {
          if (kDebugMode) {
            print(value);
          }
        },
        //selectedColor: Theme.of(context).colorScheme.secondary,
                selectedColor:(Colors.green)
            ),
             const SizedBox(height:40.0,),

            GestureDetector(
              onTap: () {
              Expanded  ( child: Container(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 0.0),
                  margin: const EdgeInsets.only(left: 30.0, right: 0.0),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white60, width: 2.0),
                      borderRadius: BorderRadius.circular(0)),
                  child: const Center(
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ));
              }
              ),
          ]) ),


          /* const SizedBox(height:40.0,),

            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ));
              },
              child: Container(
                padding:const EdgeInsets.only(top:12.0,bottom:12.0),
                margin:const EdgeInsets.only(left:30.0,right:30.0),
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color:Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child:const Center(
                  child: Text(
                    "SIGN UP",
                    style:TextStyle(
                        color:Colors.black,
                        fontSize:25.0,
                        fontWeight:FontWeight.w500),
                  ),
                ),
              ),
            ), */
          //  const SizedBox(height:40.0,),
           //  SizedBox(height: MediaQuery.of(context).size.height/8,),
          /*  const Text(
              "Login with social media",
              style:TextStyle(
                  color:Colors.white,
                  fontSize:20.0,
                  ),
            ),
            const SizedBox(height:10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                padding:const EdgeInsets.all(4) ,
                decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
                child:Image.asset(
                  "assets/images/google.png",
                  height:30,
                  width:30,
                  fit:BoxFit.cover,
                )
              ),
                const SizedBox(width:10.0,),
                Container(
                    padding:const EdgeInsets.all(4) ,
                    decoration:BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10)),
                    child:Image.asset(
                      "assets/images/facebook.png",
                      height:30,
                      width:30,
                      fit:BoxFit.cover,
                    )
                )
              ],)
      )
    );

  }

} */

*/