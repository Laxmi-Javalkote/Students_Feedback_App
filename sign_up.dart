import 'package:flutter/material.dart';
import 'package:studentsfeedbackapp/sign_in_student.dart';

//void main() {
  //runApp(const SignUp());
//}
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: const EdgeInsets.only(top:40.0),
        height:MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient:LinearGradient(colors:[
              Color(0xffb51837),
              Color(0xff661c3a),
              Color(0xff301939),
            ],begin:Alignment.topLeft,end:Alignment.topRight)),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            const Padding(
              padding: EdgeInsets.only(left:30.0),
              child: Text("Create Your\nAccount",textDirection: TextDirection.ltr,style:TextStyle(color:Colors.white,fontSize:40.0,fontWeight:FontWeight.bold),
              ),
            ),
            const SizedBox(height:20.0),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top:30,left:30.0,right: 30.0),
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
                    const TextField(
                      decoration: InputDecoration(hintText: "Enter Name",hintTextDirection: TextDirection.ltr,prefixIcon: Icon(Icons.person_outline)),
                    ),
                    const SizedBox(height:10.0),

                    const Text(
                      "Email",
                    textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Color(0xffb51837),
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    const TextField(
                      decoration: InputDecoration(hintText: "Enter Email",hintTextDirection: TextDirection.ltr,prefixIcon: Icon(Icons.email_outlined)),
                    ),
                    const SizedBox(height:10.0),

                    const Text(
                      "Password",
                      style: TextStyle(
                          color: Color(0xffb51837),
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(hintText: "Enter Password",hintTextDirection: TextDirection.ltr,prefixIcon: Icon(Icons.password)),
                    ),
                    const SizedBox(height: 10.0,),
                    const Row(
                      /*********************/
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                    const SizedBox(height: 30.0,),

                    Container(
                        height: 60,
                        decoration:BoxDecoration(gradient:const LinearGradient(colors:[
                          Color(0xffb51837),
                          Color(0xff661c3a),
                          Color(0xff301939),
                        ],begin:Alignment.topLeft,end:Alignment.topRight),borderRadius: BorderRadius.circular(30)),
                        width: MediaQuery.of(context).size.width,
                        child: const Center(
                          child:Text(
                            "SIGN UP",textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold
                            ),
                          ), )

                    ),
                    SizedBox(height:MediaQuery.of(context).size.height/15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column( //crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: Text(
                                "Already have an account?",textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500

                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignIn_student(),
                                    )
                                );
                              },
                              child: const Text(
                                "SIGN IN",textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    color: Color.fromARGB(255,4,72,129) ,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),

                         ],

                        )
                      ],
                    )
                  ],
                ),
              ),
            )
           ],),
      ),
    );
  }
}

