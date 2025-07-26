import 'package:flutter/material.dart';
import 'package:fluttertestproject/widgets/ownwidget.dart';

class NavigationBasic extends StatelessWidget {
  const NavigationBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
        title: Text('Navigation Example'),
        bottom: TabBar(tabs:  [
          Tab(
            icon: Icon(Icons.home),
            text: 'Home'
          ),
          Tab(
            icon: Icon(Icons.settings),
            text: 'Settings'
          ),
          Tab(
            icon: Icon(Icons.widgets),
            text: 'Widgets'
          ),
        ]),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/bg1.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text('User Name', style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
                
              ),
              ListTile(
                title: Text('Stack and Progress'),
                onTap: () {
                  Navigator.pushNamed(context, '/stackAndProgress');
                },
              ),
              Divider(height: 1, color: const Color.fromARGB(255, 194, 216, 226)),
              ListTile(
                title: Text('Todo App and Alert'),
                onTap: () {
                  Navigator.pushNamed(context, '/todoAppAndAlert');
                },
              ),
              Divider(height: 1, color: const Color.fromARGB(255, 194, 216, 226)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: const Color.fromARGB(255, 247, 131, 131),
              child: Center(child: Text('Home Page'))
            ),
            Container(
              color: const Color.fromARGB(153, 59, 29, 228),
              child: Center(child: Text('Settings Page'))
            ),
            OwnWidget(),
          ],
        ),
      ),
    );
  }
}