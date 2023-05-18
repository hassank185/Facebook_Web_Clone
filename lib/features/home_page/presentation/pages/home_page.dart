



import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/center_menu.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/left_menu/left_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LeftSideMenu(),
          SizedBox(width: 30,),
          Expanded(child: CenterMenu()),
          SizedBox(width: 30,),
          LeftSideMenu(),

        ],
      ),
    );
  }
}
