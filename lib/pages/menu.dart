import 'package:flutter/material.dart';
import 'package:mobile_app/pages/Log.dart';
import 'package:mobile_app/pages/register.dart';
import 'package:mobile_app/pages/home.dart';


class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: new AppBar(
          title: Text("Menu"),
          backgroundColor: Colors.green[700],
        ),
      backgroundColor: Colors.green[700],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text(userName), accountEmail: Text(log_email),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://play-lh.googleusercontent.com/e6-dZlTM-gJ2sFxFFs3X15O84HEv6jc9PQGgHtVTn7FP6lUXeEAkDl9v4RfVOwbSuQ"),

            ),
            ),

            
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/menu');
              },
              leading: Icon(Icons.person),
              title: Text("Dashboard"),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/add');
              },
              leading: Icon(Icons.key),
              title: Text("Add Course"),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/inform');
              },
              leading: Icon(Icons.medical_information),
              title: Text("Information"),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/');
              },
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            /*for(var i = 0;i < list.length;i++){
              MyMenu(title: list[i].toString(),icon: Icons.account_balance, warn: Colors.brown,);
            }*/
            MyMenu(title: "University",icon: Icons.account_balance, warn: Colors.brown,),
            MyMenu(title: "Information",icon: Icons.info_outline_rounded, warn: Colors.blue,),
            MyMenu(title: "Settings",icon: Icons.settings, warn: Colors.green,),
            MyMenu(title: "School",icon: Icons.school, warn: Colors.grey,),
            MyMenu(title: "Securyty",icon: Icons.security, warn: Colors.brown,),

          ],
        ),
      ),
    );}
  void Upp(){
    for(int i = 0;i < list.length;i++){
      MyMenu(title: list[i],icon: Icons.school, warn: Colors.brown,);
    }
  }
}

class MyMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor warn;
  const MyMenu({ required this.title,  required this.icon,  required this.warn});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){},
        splashColor: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warn,

              ),
              Text(title, style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}

