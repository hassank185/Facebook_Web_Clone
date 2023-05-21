


import 'package:flutter/material.dart';

class PagesProfileWidget extends StatelessWidget {
  const PagesProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Your pages and profiles",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.grey[700]),),
          Icon(Icons.more_horiz,color: Colors.grey,)
          ],
        ),
        SizedBox(height: 10,),
        Row(

          children: [
            CircleAvatar(radius: 20,),
            SizedBox(width: 10),
            Text("Muhammad Hassan",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(height:10),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(

            children: [

              Icon(Icons.notifications,color: Colors.grey,size: 17,),
              SizedBox(width: 10,),
              Text("1 Notification",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey[700]),),
            ],
          ),
        ),
        SizedBox(height:6 ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(

            children: [

              Icon(Icons.mic,color: Colors.grey,size: 17,),
              SizedBox(width: 10,),
              Text("Create promotion",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey[700]),),
            ],
          ),
        ),


      ],
    );
  }
}
