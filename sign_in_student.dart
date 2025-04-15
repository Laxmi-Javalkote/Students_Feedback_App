//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:studentsfeedbackapp/dashboard_student.dart';
import 'package:studentsfeedbackapp/sign_in_faculty.dart';
import 'package:studentsfeedbackapp/splash_screen.dart';

import 'dashboard_faculty.dart';
class SignIn_student extends StatefulWidget{
  const SignIn_student({super.key});

  @override
  State<SignIn_student> createState() => _SignIn_studentState();
}

class _SignIn_studentState extends State<SignIn_student> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top:50.0),
          height:MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient:LinearGradient(colors:[
                Color(0xffb51837),
                Color(0xfff84a91),
                //Color(0xff661c3a),
                Color(0xff301939),
              ],begin:Alignment.topLeft,end:Alignment.topRight)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
        
            const Padding(
              padding: EdgeInsets.only(left:30.0,bottom: 15),
              child: Text("Hello,\nAre you a Student ?",style:TextStyle(color:Colors.white,fontSize:30.0,fontWeight:FontWeight.bold),
              ),
            ),
            //  const SizedBox(height:40.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top:20.0,left:30.0,right: 30.0),
                  width:MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.white,borderRadius:BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Name",//textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Color(0xffb51837),
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                       TextField(
                        //controller: nameController,
                        decoration: InputDecoration(hintText: "Enter Name",hintTextDirection: TextDirection.ltr,prefixIcon: Icon(Icons.person_outline,),),

                      ),
                      const SizedBox(height:10.0),
        
                      const Text(
                      "Email",
                      style: TextStyle(
                        color: Color(0xffb51837),
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
        
                    const TextField(
                      decoration: InputDecoration(hintText: "Enter Email",prefixIcon: Icon(Icons.email_outlined)),
                    ),
                      const SizedBox(height:20.0),
        
                      const Text(
                        "Password",
                        style: TextStyle(
                            color: Color(0xffb51837),
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(hintText: "Enter Password",prefixIcon: Icon(Icons.password)),
                      ),
                      const SizedBox(height: 20.0,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color.fromARGB(255,4,72,129) ,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25.0,),
        
                           GestureDetector(
                           onTap: () async {
                             //If successfully logged in (creds are correct)
        
                             var sharedPref = await SharedPreferences.getInstance();
                             sharedPref.setBool(Splash_screenState.KEYLOGIN,true); //now user has logged in
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashboardPage_student(),));
                    },
        
                         child:
                         Container(
        
                            height: 60,
                            decoration:BoxDecoration(gradient:const LinearGradient(colors:[
                              Color(0xffb51837),
                              Color(0xfff84a91),
                              //Color(0xff661c3a),
                              Color(0xff301939),
                            ],begin:Alignment.topLeft,end:Alignment.topRight),borderRadius: BorderRadius.circular(30)),
                            width: MediaQuery.of(context).size.width,
                                                 child: Center(
                           // child:ElevatedButton(
                              //onPressed: (){
                               // CollectionReference collRef = FirebaseFirestore.instance.collection('client');
                               /* collRef.add(
                                  {
                                    //'name':nameController.text,
                                    //'email':emailController.text,
                                    //'Password':passwordController.text,
                                  }
                                ); */
                              //},
                                child: const
                                Center(
                                  child:Text(
                                    "SIGN IN as a Student",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                                                   //style: TextStyle(
                                   // color: Colors.white,
                                   // fontSize: 24.0,
                                    //fontWeight: FontWeight.bold
                                ),
                                                 ), )
        
                                                 //),

        
        
                     // SizedBox(height:MediaQuery.of(context).size.height/10,),
                      ,const SizedBox(height: 15.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Column( //crossAxisAlignment:CrossAxisAlignment.end,
                          children: [
                      const Center(
                        child: Text(
                        "I am a Teacher?",
                          style: TextStyle(
                              //color: Colors.black,
                            color:Color(0xffb51837),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
        
                          ),
                        ),
                      ),
                  GestureDetector(
                    onTap: (){
                      //**************************
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn_faculty(),));
                    },
                    child: const Text(
                      "SIGN IN as a Teacher",
                      style: TextStyle(
                          color: Color.fromARGB(255,4,72,129) ,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
        
        
        
        
                          ],
                        )
                      ],)
                    ],
                      ),
                ),
              ),
          ],),
        ),
      ),
    );
  }

}