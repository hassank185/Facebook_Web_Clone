


import 'package:flutter/material.dart';

class LeftSideNavBarShorCutWidget extends StatelessWidget {
  const LeftSideNavBarShorCutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Your shortcuts",style: TextStyle(
            color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 17
        ),),
        SizedBox(height: 15,),
        Row(
          children: [
            Icon(Icons.all_inbox_sharp,size: 35,),
            SizedBox(width: 10,),
            Text("AHA",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
          ],
        )
      ],
    );
  }
}
