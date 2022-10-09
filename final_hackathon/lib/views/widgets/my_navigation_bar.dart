import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:final_hackathon/views/Home/home_screens.dart';
import 'package:final_hackathon/views/lesson/cont_lesson.dart';
import 'package:final_hackathon/views/profile/profile_screens.dart';
import 'package:final_hackathon/views/profile_mentor/profile_mentor.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
 const  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
   final List<Widget> _widgetOptions = <Widget>[
   HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
         BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home,
          color: Colors.pink,),
          ),
           BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.shopping_bag,
          color: Colors.pink,),
          ), 
           BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.settings,
          color: Colors.pink,),
          ),
           BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.add,
          color: ColorsConstants.onboarding,),
          )
        ], 
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}