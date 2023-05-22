import 'package:flutter/material.dart';

class ReactionCounterWidget extends StatelessWidget {
  const ReactionCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Row(
          children: [
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.lightBlueAccent),
              child: Image.asset("assets/sad_reaction.png"),
            ),
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.greenAccent),
              child: Image.asset("assets/laugh_reaction.png"),
            ),
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.yellowAccent),
              child: Image.asset("assets/wow_reaction.png"),
            ),
            SizedBox(width: 10,),
            Text("Muhammad Hassan and 12k others",style: TextStyle(color: Colors.black87,fontSize: 15),),
            Spacer(),
            Text("15 comments",style: TextStyle(color: Colors.black87,fontSize: 15),),
            SizedBox(width: 5,),
            Text("50 Share",style: TextStyle(color: Colors.black87,fontSize: 15),),
          ],
        ),

      ],
    );
  }
}