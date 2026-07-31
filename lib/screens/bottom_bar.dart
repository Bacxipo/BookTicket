import 'package:booktickets/screens/home_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOption = <Widget>[
    HomeScreen(),
    const Text("Search"),
    const Text("Ticket"),
    const Text("Profile"),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    //print('${_selectedIndex}');//tự động chuyển thành chuỗi
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOption[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.home_24_regular),
            activeIcon: Icon(FluentIcons.home_24_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.search_24_regular),
            activeIcon: Icon(FluentIcons.search_24_filled),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.ticket_diagonal_24_regular),
            activeIcon: Icon(FluentIcons.ticket_diagonal_24_filled),
            label: "ticket",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentIcons.person_24_regular),
            activeIcon: Icon((FluentIcons.person_24_filled)),
            label: "profile",
          ),
        ],
      ),
    );
  }
}
