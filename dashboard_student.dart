/*import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(
        home:DashboardPage_student(),
      ));
}

class DashboardPage_student extends StatelessWidget {
  const DashboardPage_student({super.key});

  @override
  Widget build(BuildContext context) {

   /* var arrColors = [Colors.red,
      Colors.orange,
      Colors.grey,
      Colors.blue,
      Colors.pink,
      Colors.green,
      Colors.purpleAccent,
      Colors.brown]; */

    return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.orange,
          title:const Text('Student Dashboard'),
        ),

    );
  }
} */


import 'package:flutter/material.dart';
import 'package:studentsfeedbackapp/sign_in_student.dart';
import 'package:studentsfeedbackapp/userpage.dart';

import 'ZMShaikh.dart';
import 'forms.dart';
import 'notifications.dart';

class DashboardPage_student extends StatelessWidget{
   DashboardPage_student({Key? key}) : super(key:key);
   // Initial Selected Value
    //String dropdownvalue = 'Item 1';

    // List of items in our dropdown menu
     var Z_M_Shaikh = [
       'Database Systems',
       'Design and Analysis of Algorithms',
     ];
     var S_S_Konda = [
       'Theory of Computation',
       'Machine Learning',
     ];
     var Otari = [
       'Human computer Interaction',
       'Python',
     ];
     var P_Jawalkar = [
       'Software Engineering',
       'Discrete Mathematics',
       'Universal Human Values',
     ];
     var N_Bhattad = [
       'Business Communication',
     ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar:AppBar(
      title:const Text('Student Dashboard'),
      backgroundColor:Colors.blue.shade700,

      actions:<Widget>[
      PopupMenuButton<int>(
      onSelected:(item) => handleClick(item),
      itemBuilder:(context) => [
      PopupMenuItem<int>(value:0,
          child:Text('Logout'),
        onTap: () {
          //close navigation drawer before
          Navigator.pop(context);

          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignIn_student(),
          ));
        },

      ),
      PopupMenuItem<int>(value:1,child:Text('Settings')),
      ],
      ),
      ],
      ),
    body:
        Padding(padding:const EdgeInsets.all(8.0) ,
        child: Column(
          //children: [
           // Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(   //This is very important line of code for scrolling
                    scrollDirection: Axis.horizontal,  //Using this line we can scroll horizontally
                    child: Row(
                      children: [
                        Container(
                          margin:EdgeInsets.only(right:11),
                          child: DropdownMenu(
                            hintText: 'Z.M.Shaikh',
                            width:200,
                            menuHeight:200,
                            dropdownMenuEntries: Z_M_Shaikh.map((e) => DropdownMenuEntry(value: e, label: e ) ) .toList(),
                            onSelected: (value) {
                              //Define routes for each menu item
                              Map<String,Widget> routes = {
                                'Database Systems':ZMShaikh(title: '',), //change with actual pages
                                'Design and Analysis of Algorithms':ZMShaikh(title: '',), //change with actual pages

                              };
                              if(routes.containsKey(value)){
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => routes[value]!,
                                  ),
                                );
                              }
                              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Forms(),));
                              debugPrint('Selected Value: $value');
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            enableSearch:true,
                            requestFocusOnTap:true,
                            enableFilter: true,
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(right:11),
                          child: DropdownMenu(
                            hintText: 'S.S.Konda',
                            width:200,
                            dropdownMenuEntries: S_S_Konda.map((e) => DropdownMenuEntry(value: e, label: e ) ) .toList(),
                            onSelected: (value) {
                              debugPrint('Value: $value');
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            enableSearch:true,
                            requestFocusOnTap:true,
                            enableFilter: true,
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(right:11),
                          child: DropdownMenu(
                            hintText: 'Otari',
                            width:200,
                            dropdownMenuEntries: Otari.map((e) => DropdownMenuEntry(value: e, label: e ) ) .toList(),
                            onSelected: (value) {
                              debugPrint('Value: $value');
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            enableSearch:true,
                            requestFocusOnTap:true,
                            enableFilter: true,
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(right:11),
                          child: DropdownMenu(
                            hintText: 'P.Jawalkar',
                            width:200,
                            dropdownMenuEntries: P_Jawalkar.map((e) => DropdownMenuEntry(value: e, label: e ) ) .toList(),
                            onSelected: (value) {
                              debugPrint('Value: $value');
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            enableSearch:true,
                            requestFocusOnTap:true,
                            enableFilter: true,
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(right:11),
                          child: DropdownMenu(
                            hintText: 'N.Bhattad',
                            width:200,
                            dropdownMenuEntries: N_Bhattad.map((e) => DropdownMenuEntry(value: e, label: e ) ) .toList(),
                            onSelected: (value) {
                              debugPrint('Value: $value');
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            enableSearch:true,
                            requestFocusOnTap:true,
                            enableFilter: true,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
               // const SizedBox(height: 25.0,width: 25.0,),

               // const SizedBox(height: 25.0,width: 25.0,),

               // const SizedBox(height: 25.0,width: 25.0,),

               // const SizedBox(height: 25.0,width: 25.0,),

              //  const SizedBox(height: 25.0,width: 25.0,),
              ],
              /* // Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton(

                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),
                //  ), */
              /* child: DropdownButton<String>(
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ) */
           // ),
         // ],
        ),
        ),
    
    
    drawer:const NavigationDrawer(),
  );
  void handleClick(int item) {
    switch(item) {
      case 0:
        break;
      case 1:
        break;
    }
  }


  void setState(Null Function() param0) {}
}

class NavigationDrawer extends StatelessWidget{
  //const NavigationDrawer({Key? key})
  const NavigationDrawer({super.key});
  @override
  Widget build(BuildContext context)  => Drawer(
      child:SingleChildScrollView(
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          )
      )
  );
}

Widget buildHeader(BuildContext context)=>Material(
    color:Colors.blue.shade700,
    child:InkWell(
      onTap: () {
        //close navigation drawer before
        Navigator.pop(context);

        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UserPage(),
        ));
      },
      child:Container(
        padding:EdgeInsets.only(

          top:24 + MediaQuery.of(context).padding.top,
          bottom:24,

        ),
        child:Column(
          children: const [
            CircleAvatar(
              radius:52,
              backgroundImage: NetworkImage('https://'),
            ),
            SizedBox(height:12),
            Text('Laxmi Javalkote',
              style:TextStyle(fontSize:28,color:Colors.white),
            ),
            Text('laxmijavalkote4804@gmail.com',
              style:TextStyle(fontSize:16,color:Colors.white),
            ),

          ],
        ),
      ),
    )
);




Widget buildMenuItems(BuildContext context) => Container(
  padding:const EdgeInsets.all(24),
  child:Wrap(
    runSpacing:16,//vertical spacing
    children: [
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title:const Text('Home'),
        onTap: () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> DashboardPage_student(),)),
      ),
      ListTile(
        leading: const Icon(Icons.favorite_border),
        title:const Text('Favourites'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.workspaces_outline),
        title:const Text('Workflow'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.update),
        title:const Text('Updates'),
        onTap: () {},
      ),
      const Divider(color:Colors.black54),
      ListTile(
        leading: const Icon(Icons.account_tree_outlined),
        title:const Text('Plugins'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.notifications_outlined),
        title:const Text('Notifications'),
        onTap: () =>
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const NotificationsPage(),)),
      ),

    ],
  ),


);















