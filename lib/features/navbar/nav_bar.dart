import 'package:facebook_web_clone/features/navbar/widgets/left_side_nav_bar_widget.dart';
import 'package:facebook_web_clone/features/navbar/widgets/nav_bar_center_navigation.dart';
import 'package:facebook_web_clone/features/navbar/widgets/nav_bar_right_widget.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  final Function(int)? onNavItemTapped;
  final int? selectedIndex;

  const NavBarWidget({Key? key, this.onNavItemTapped, this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 55,

      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 3,
            offset: Offset(0, 1),
          ),

        ],
      ),
      child: Row(
        children: [
          LeftSideNavBarWidget(),
          SizedBox(width: 60,),
          NavBarCenterNavigationWidget(onNavItemTapped: onNavItemTapped,selectedIndex: selectedIndex),
          SizedBox(width: 130,),
          NavBarRightWidget()
        ],
      ),

    );
  }
}