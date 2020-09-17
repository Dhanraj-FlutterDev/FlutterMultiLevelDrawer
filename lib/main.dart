import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    ));


class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}


class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Demo'),
      ),
      drawer: MyDrawer(),
      body: Center(),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiLevelDrawer(
      backgroundColor: Colors.white,
        rippleColor: Colors.lime,
        divisionColor: Colors.grey,
        header: Center(
          child: Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Image.asset('assets/user.png',height: 150,width: 150,),
                SizedBox(
                  height: 5,
                ),
                Text('Username'),
              ],
            ),
          ),
        ),
        children: [
          MLMenuItem(
              content: Text('Person'),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_right),
              onClick: () {},
              subMenuItems: [
                MLSubmenu(
                    submenuContent: Text('Option 1'),
                    onClick: () {
                      Navigator.pop(context);
                    })
              ]),
          MLMenuItem(content: Text('Notification'),
              leading: Icon(Icons.notifications),
              trailing: Icon(Icons.arrow_right),
              onClick:(){},
          subMenuItems: [
            MLSubmenu(submenuContent: Text('Option 1'),onClick:(){} ),
            MLSubmenu(submenuContent: Text('Option 2'),onClick: (){}),
            MLSubmenu(submenuContent: Text('Option 3'),onClick: (){}),
          ]
          ),
          MLMenuItem(content: Text('Exit'),
              leading: Icon(Icons.exit_to_app),
              onClick:(){Navigator.pop(context);},
          ),
        ]);
  }
}
