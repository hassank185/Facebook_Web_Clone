


import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BirthDayWidget extends StatelessWidget {
  const BirthDayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Birthdays",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.grey[700]),),
        SizedBox(height: 10,),
        Row(
          children: [
            Icon(FontAwesomeIcons.gift,color: blueColor,),
            SizedBox(width: 10,),
            Text("Amir khan and 3 others have\ntheir birthdays today.",style: TextStyle(fontWeight: FontWeight.w500),)
          ],
        )
      ],
    );
  }
}
