import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:playstation_ui/style/colors.dart' as Style;

class BottomBarHome extends StatefulWidget {
  @override
  _BottomBarHomeState createState() => _BottomBarHomeState();
}

class _BottomBarHomeState extends State<BottomBarHome> {
  int _currentIndex = 0;

  _changePosition(index) {
    _currentIndex = index;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 70.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          child: BottomNavyBar(
            backgroundColor: Style.Colors.primaryColor2,
            selectedIndex: _currentIndex,
            showElevation: false,
            onItemSelected: (index) => setState(() {
              _changePosition(index);
            }),
            items: [              BottomNavyBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  // key: _homeIconKey,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                activeColor: Style.Colors.secondaryColor,
              ),
              BottomNavyBarItem(
                icon: Icon(
                  Icons.person,
                  // key: _accountIconKey,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: Text(
                  'Users',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                activeColor: Style.Colors.secondaryColor,
              ),
              BottomNavyBarItem(
                icon: Icon(
                  Icons.settings,
                  // key: _settingsIconKey,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                activeColor: Style.Colors.secondaryColor,
              ),

              BottomNavyBarItem(
                icon: Icon(
                  Icons.bookmark_outlined,
                  // key: _bookmarkIconKey,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: Text(
                  'Saved',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                activeColor: Style.Colors.secondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
