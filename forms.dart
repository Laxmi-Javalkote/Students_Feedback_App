/*import 'package:flutter/material.dart';
import 'package:studentsfeedbackapp/my_drawer_header.dart';
import 'package:studentsfeedbackapp/contacts.dart';
import 'package:studentsfeedbackapp/dashboard.dart';
import 'package:studentsfeedbackapp/events.dart';
import 'package:studentsfeedbackapp/notes.dart';
import 'package:studentsfeedbackapp/notifications.dart';
import 'package:studentsfeedbackapp/privacy_policy.dart';
import 'package:studentsfeedbackapp/send_feedback.dart';
import 'package:studentsfeedbackapp/settings.dart';
import 'events.dart';


void main(){
  runApp(Forms());
}

class Forms extends StatefulWidget {

  @override
  FormsState createState() => FormsState();
}

class FormsState extends State<Forms> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    //var container;
    dynamic container;
    /* if (currentPage == DrawerSections.dashboard) {
      container = DashboardFaculty();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.events) {
      container = EventsPage();
    } else  */
    if (currentPage == DrawerSections.forms) {
      container = Forms();
    }
    /*else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacyPolicy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.sendFeedback) {
      container = SendFeedbackPage();
    } */
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text("Faculty Dashboard"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        ),
      ),

    );
  }
  Widget MyDrawerList(){
    return Container(
      padding: EdgeInsets.only(
        top:15,
      ),
      child:Column(
        //shows the list of menu drawer
        children: [
          menuItem(1,"Dashboard",Icons.dashboard_outlined,
              currentPage==DrawerSections.dashboard ? true:false),
          menuItem(2,"Contacts",Icons.people_alt_outlined,
              currentPage==DrawerSections.contacts ? true:false),
          menuItem(3,"Events",Icons.event,
              currentPage==DrawerSections.events ? true:false),
          menuItem(4,"Forms",Icons.pages,
              currentPage==DrawerSections.forms ? true:false),
          Divider(),
          menuItem(5,"Settings",Icons.settings_outlined,
              currentPage==DrawerSections.settings ? true:false),
          menuItem(6,"Notifications",Icons.notifications_outlined,
              currentPage==DrawerSections.notifications ? true:false),
          Divider(),
          menuItem(7,"Privacy policy",Icons.privacy_tip_outlined,
              currentPage==DrawerSections.privacyPolicy ? true:false),
          menuItem(8,"Send feedback",Icons.feedback_outlined,
              currentPage==DrawerSections.sendFeedback ? true:false),

        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected){
    return Material(
        color:selected ? Colors.grey[300] : Colors.transparent,
        child: InkWell(
            onTap: () {
              Navigator.pop(context);
              setState(() {
                if (id == 1) {
                  currentPage = DrawerSections.dashboard;
                }
                else if (id == 2) {
                  currentPage = DrawerSections.contacts;
                }
                else if (id == 3) {
                  currentPage = DrawerSections.events;
                }
                else if (id == 4) {
                  currentPage = DrawerSections.forms;
                }
                else if (id == 5) {
                  currentPage = DrawerSections.settings;
                }
                else if (id == 6) {
                  currentPage = DrawerSections.notifications;
                }
                else if (id == 7) {
                  currentPage = DrawerSections.privacyPolicy;
                }
                else if (id == 8) {
                  currentPage = DrawerSections.sendFeedback;
                }
              },);
            },
            child:Padding(
                padding:EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child:Icon(
                        icon,
                        size:20,
                        color:Colors.black,
                      ),
                    ),
                    Expanded(
                      flex:3,
                      child: Text(
                        title,
                        style:TextStyle(
                          color:Colors.black,
                          fontSize:16,
                        ),
                      ),
                    )],
                ))));
  }
}
enum DrawerSections{
  dashboard,
  contacts,
  events,
  forms,
  settings,
  notifications,
  privacyPolicy,
  sendFeedback,

}

*/
import 'package:flutter/material.dart';
import 'package:studentsfeedbackapp/userpage.dart';

import 'notifications.dart';

class Forms extends StatelessWidget{
  const Forms({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar:AppBar(
      title:const Text('Form'),
      backgroundColor:Colors.blue.shade700,
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
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Forms(),)),
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









