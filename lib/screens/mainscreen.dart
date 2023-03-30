import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'thirdscreen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;
  final tabs = [
    const Secondscreen(),
    const Center(child: Text("folders"),),
    const Third_screen(),
    const Center(child: Text("event"),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 25,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_copy_rounded,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.message),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,),
            label: "",
          )
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}