import 'package:flutter/material.dart';

void main() {
  runApp( ZMShaikh(title: '',));
}
class ZMShaikh extends StatefulWidget {

  ZMShaikh({super.key, required this.title});

  final String title;

  @override
  State<ZMShaikh> createState() => _ZMShaikhState();
}
class _ZMShaikhState  extends State<ZMShaikh>{

  String Q1 ='Knowledge & concept clarity of the teacher on the subject area';
  String Q2 ='Level of interest created in the subject area';
  String Q3 ='Conduction of lecture in systematic and planned manner';
  String Q4 ='Encourage the students for asking the questions and clarifies doubts';
  String Q5 ='Quality of the board writing/PPTs/digital writing etc. is clear ,easy to read and understandable';
  String Q6 ='Use of modern teaching aids like video clips ,real time case studies, applications and additional information about topic.';
  String Q7 ='your subject understanding';
  String Q8 ='Pace/speed of teaching';
  String Q9 ='Unbiased approach towards students';
  String Q10 ='Syllabus covered';
  String Q11 ='Have you got the notes of the units covered';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height:30),
               Text('Question 1: $Q1'),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Excellent',
                  groupValue: Q1,
                  onChanged:(selectedValue){
                    setState(()=>Q1 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Excellent'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Average',
                  groupValue: Q1,
                  onChanged:(selectedValue){
                    setState(()=>Q1 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Average'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Good',
                  groupValue: Q1,
                  onChanged:(selectedValue){
                    setState(()=>Q1 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Good'),
                ),
              ),
              const SizedBox(height:30),
              Text('Question 2: $Q2'),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Excellent',
                  groupValue: Q2,
                  onChanged:(selectedValue){
                    setState(()=>Q2 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Excellent'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Average',
                  groupValue: Q2,
                  onChanged:(selectedValue){
                    setState(()=>Q2 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Average'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Good',
                  groupValue: Q2,
                  onChanged:(selectedValue){
                    setState(()=>Q2 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Good'),
                ),
              ),
              const SizedBox(height:30),
              Text('Question 3: $Q3'),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Excellent',
                  groupValue: Q3,
                  onChanged:(selectedValue){
                    setState(()=>Q3 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Excellent'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Average',
                  groupValue: Q3,
                  onChanged:(selectedValue){
                    setState(()=>Q3 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Average'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Good',
                  groupValue: Q3,
                  onChanged:(selectedValue){
                    setState(()=>Q3 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Good'),
                ),
              ),
              const SizedBox(height:30),
              Text('Question 4: $Q4'),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Excellent',
                  groupValue: Q4,
                  onChanged:(selectedValue){
                    setState(()=>Q4 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Excellent'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Average',
                  groupValue: Q4,
                  onChanged:(selectedValue){
                    setState(()=>Q4 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Average'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Good',
                  groupValue: Q4,
                  onChanged:(selectedValue){
                    setState(()=>Q4 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Good'),
                ),
              ),
              const SizedBox(height:30),
              Text('Question 5: $Q5'),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Excellent',
                  groupValue: Q5,
                  onChanged:(selectedValue){
                    setState(()=>Q5 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Excellent'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Average',
                  groupValue: Q5,
                  onChanged:(selectedValue){
                    setState(()=>Q5 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Average'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Good',
                  groupValue: Q5,
                  onChanged:(selectedValue){
                    setState(()=>Q5 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Good'),
                ),
              ),
              const SizedBox(height:30),
              Text('Question 6: $Q6'),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Excellent',
                  groupValue: Q6,
                  onChanged:(selectedValue){
                    setState(()=>Q6 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Excellent'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Average',
                  groupValue: Q6,
                  onChanged:(selectedValue){
                    setState(()=>Q6 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Average'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Good',
                  groupValue: Q6,
                  onChanged:(selectedValue){
                    setState(()=>Q6 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Good'),
                ),
              ),
              const SizedBox(height:30),
              Text('Question 7: $Q7'),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Excellent',
                  groupValue: Q7,
                  onChanged:(selectedValue){
                    setState(()=>Q7 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Excellent'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Average',
                  groupValue: Q7,
                  onChanged:(selectedValue){
                    setState(()=>Q7 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Average'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Good',
                  groupValue: Q7,
                  onChanged:(selectedValue){
                    setState(()=>Q7 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Good'),
                ),
              ),
              const SizedBox(height:30),
              Text('Question 8: $Q8'),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Excellent',
                  groupValue: Q8,
                  onChanged:(selectedValue){
                    setState(()=>Q8 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Excellent'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Average',
                  groupValue: Q8,
                  onChanged:(selectedValue){
                    setState(()=>Q8 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Average'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Good',
                  groupValue: Q8,
                  onChanged:(selectedValue){
                    setState(()=>Q8 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Good'),
                ),
              ),
              const SizedBox(height:30),
              Text('Question 9: $Q9'),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Excellent',
                  groupValue: Q9,
                  onChanged:(selectedValue){
                    setState(()=>Q9 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Excellent'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Average',
                  groupValue: Q9,
                  onChanged:(selectedValue){
                    setState(()=>Q9 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Average'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Good',
                  groupValue: Q9,
                  onChanged:(selectedValue){
                    setState(()=>Q9 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Good'),
                ),
              ),
              const SizedBox(height:30),
              Text('Question 10: $Q10'),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Excellent',
                  groupValue: Q10,
                  onChanged:(selectedValue){
                    setState(()=>Q10 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Excellent'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Average',
                  groupValue: Q10,
                  onChanged:(selectedValue){
                    setState(()=>Q10 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Average'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Good',
                  groupValue: Q10,
                  onChanged:(selectedValue){
                    setState(()=>Q10 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Good'),
                ),
              ),
              const SizedBox(height:30),
              Text('Question 11: $Q11'),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Excellent',
                  groupValue: Q11,
                  onChanged:(selectedValue){
                    setState(()=>Q11 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Excellent'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Average',
                  groupValue: Q11,
                  onChanged:(selectedValue){
                    setState(()=>Q11= selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Average'),
                ),
              ),
              const SizedBox(height:20),
              SizedBox(
                width:200,
                child: RadioMenuButton(
                  value:'Good',
                  groupValue: Q11,
                  onChanged:(selectedValue){
                    setState(()=>Q11 = selectedValue!);
                  },
                  style: ButtonStyle(
                    shape:WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                    elevation: const WidgetStatePropertyAll(2),
                    backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  ),
                  child: const Text('Good'),
                ),
              ),
              const SizedBox(height:30),
              ElevatedButton(
                child: Text('Submit'),
                onPressed:() {
                  print('Feedback Submitted');
                  },
              ),
              const SizedBox(height:30),


            ],
          ),
        ),
      )
    );

  }

}