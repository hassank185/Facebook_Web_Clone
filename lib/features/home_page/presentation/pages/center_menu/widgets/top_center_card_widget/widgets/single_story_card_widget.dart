

import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:flutter/material.dart';

class SingleStoryCardWidget extends StatelessWidget {
  const SingleStoryCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.white70,
          elevation: 1,
          child: Stack(
            children: [
              Container(
                height: 182,
                width: 110,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 15,
                child: Text(
                  "Username",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: blueColor,
                      border: Border.all(width: 5, color: Colors.white)),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ));
  }
}
