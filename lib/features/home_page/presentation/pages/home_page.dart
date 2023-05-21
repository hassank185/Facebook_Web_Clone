import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/center_menu.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/left_menu/left_menu.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/right_menu/right_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: LeftSideMenu(),
          ),
          SizedBox(width: 15),
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CenterMenu(),
                ],
              ),
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            flex: 3,
            child: RightMenu(),
          ),
        ],
      ),
    );
  }
}