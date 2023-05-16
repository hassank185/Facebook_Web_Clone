


import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBarRightWidget extends StatelessWidget {
  const NavBarRightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _navbarRightWidget(iconData: Icons.grid_on),
        SizedBox(width: 8,),
        _navbarRightWidget(iconData: FontAwesomeIcons.facebookMessenger),
        SizedBox(width: 8,),
        _navbarRightWidget(iconData: FontAwesomeIcons.bell),
        SizedBox(width: 8,),
        CircleAvatar(radius: 20,),
      ],
    );
  }
  _navbarRightWidget({required IconData iconData}){
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: bodyColor
      ),
      child: Icon(iconData,color: Colors.black,),
    );
  }
}
