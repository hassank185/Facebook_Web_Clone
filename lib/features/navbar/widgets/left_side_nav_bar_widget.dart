


import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:flutter/material.dart';

class LeftSideNavBarWidget extends StatelessWidget {
  const LeftSideNavBarWidget({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Image.asset("assets/facebook_logo.png",scale: 2,),
          SizedBox(width: 4,),
          Container(
            width: 250,
            height: 45,
            decoration: BoxDecoration(
              color: bodyColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: "Search Facebook",
              ),
            ),
          ),
        ],
      ),
    );
  }
}