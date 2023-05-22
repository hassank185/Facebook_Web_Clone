import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WatchReactionWidget extends StatefulWidget {
  const WatchReactionWidget({Key? key}) : super(key: key);

  @override
  State<WatchReactionWidget> createState() => _WatchReactionWidgetState();
}

class _WatchReactionWidgetState extends State<WatchReactionWidget> {
  int _hoveredIndex = -1;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (_) => setState(() => _hoveredIndex = 0),
                onExit: (_) => setState(() => _hoveredIndex = -1),
                child: _iconWithText(icon: Icons.thumb_up_alt_rounded,text: "Like", isHovered: _hoveredIndex == 0),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (_) => setState(() => _hoveredIndex = 1),
                onExit: (_) => setState(() => _hoveredIndex = -1),
                child: _iconWithText(icon: FontAwesomeIcons.comment,text: "Comment", isHovered: _hoveredIndex == 1),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (_) => setState(() => _hoveredIndex = 2),
                onExit: (_) => setState(() => _hoveredIndex = -1),
                child: _iconWithText(icon: FontAwesomeIcons.share,text: "Share", isHovered: _hoveredIndex == 2),
              ),
              Spacer(),
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
              Text("2.5k",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 13),),
              Text("15 comments",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 13),),
              SizedBox(width: 5,),
              Text("50k views",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 13),),
            ],
          ),

        ],
      ),
    );
  }

  _iconWithText({IconData? icon, String? text, required bool isHovered}) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
        color: isHovered ? Colors.grey[200] : Colors.white,),
      child: Row(
        children: [
          Icon(icon, size: 19, color: Colors.grey),
          SizedBox(width: 10,),
          Text("$text",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500,fontSize: 13),)
        ],
      ),
    );
  }}