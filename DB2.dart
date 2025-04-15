import 'package:flutter/material.dart';
import 'package:studentsfeedbackapp/FacultyProfile.dart';
import 'package:studentsfeedbackapp/userpage.dart';

import 'dashboard_faculty.dart';
import 'notifications.dart';

class DB2 extends StatelessWidget{
  const DB2({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar:AppBar(
      title:const Text('Design And Analysis Of Algorithms'),
      backgroundColor:Colors.blue.shade700,
    ),
    body:
    Padding(
      padding: const EdgeInsets.all(8.0),

      child:const Text('Design And Analysis Of Algorithms SE A 2024-25 \n Graphical Feedback Analysis',style:TextStyle(fontSize:20.0,fontWeight:FontWeight.bold)),

    ),
    drawer:const NavigationDrawer(),
  );
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
            Text('Prof.Z.M.Shaikh',
              style:TextStyle(fontSize:28,color:Colors.white),
            ),
            Text('zmshaikh@gmail.com',
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
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const DashboardFaculty(),)),
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









