import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBarCenterNavigationWidget extends StatefulWidget {
  final Function(int)? onNavItemTapped;
  final int? selectedIndex;

  const NavBarCenterNavigationWidget({
    Key? key,
    this.onNavItemTapped,  this.selectedIndex,
  }) : super(key: key);

  @override
  State<NavBarCenterNavigationWidget> createState() => _NavBarItemListWidgetState();
}

class _NavBarItemListWidgetState extends State<NavBarCenterNavigationWidget> {
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onNavItemTapped!(index);
  }

  Widget _buildNavItem(int index, IconData icon,) {
    final isSelected = index == _selectedIndex;
    final color = isSelected ? blueColor: Colors.grey;
    final container = isSelected
        ? Container(

      height: 3,
      width: 100,
      color: blueColor,
    )
        : Container();

    return GestureDetector(
      onTap: () => _onNavItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(

          children: [
            SizedBox(

              child: Icon(icon, size: 25, color: color),
            ),
            SizedBox(width: 100,),
            SizedBox(height: 13,),
            container,
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(0, CupertinoIcons.house_fill, ),
            SizedBox(width: 5,),
            _buildNavItem(1, FontAwesomeIcons.youtube, ),
            SizedBox(width: 5,),
            _buildNavItem(2, FontAwesomeIcons.store, ),
            SizedBox(width: 5,),
            _buildNavItem(3, Icons.groups, ),
            SizedBox(width: 5,),
            _buildNavItem(4, Icons.gamepad_rounded, ),
            SizedBox(width: 5,),
          ],
        ),
      ],
    );
  }
}