import 'package:flutter/material.dart';
import 'package:fluttertestproject/navigation.dart';

class RouteAndNavigation extends StatelessWidget {
  const RouteAndNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route and Navigation Example'),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/navigationbasic');
            },
            child: Text('Tab Navigation Example'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/stackAndProgress');
            },
            child: Text('Go to Stack and Progress'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/todoAppAndAlert');
            },
            child: Text('Go to Todo App and Alert'),
          ),
          SizedBox(height: 10),
          Text(
            'Route Transition Example',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => NavigationBasic(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 0.0);
                  const end = Offset.zero;
                  const curve = Curves.easeInOut;

                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  var offsetAnimation = animation.drive(tween);

                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                },
              ));
            },
            child: Text('Tab Navigation Example'),
          ),
        ],
      ),
      )
    );
  }
}