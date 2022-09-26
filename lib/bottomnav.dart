import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class Bottomnav extends StatefulWidget {
  Bottomnav({Key? key}) : super(key: key);

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widget = [Text('1'), Text("2"), Text('3'), Text("4")];
    return Scaffold(
        bottomNavigationBar: SnakeNavigationBar.color(
          currentIndex: _selectedindex,
          backgroundColor: Colors.black,
          onTap: (index) {
            setState(() {
              _selectedindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.store)),
            BottomNavigationBarItem(
              icon: Icon(Icons.battery_saver_outlined),
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person)),
          ],
        ),
        body: SafeArea(child: widget.elementAt(_selectedindex)));
  }
}
