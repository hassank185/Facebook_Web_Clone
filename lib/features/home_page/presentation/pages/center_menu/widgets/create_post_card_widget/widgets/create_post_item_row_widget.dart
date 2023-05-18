
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreatePostItemRowWidget extends StatefulWidget {
  const CreatePostItemRowWidget({Key? key}) : super(key: key);

  @override
  _CreatePostItemRowWidgetState createState() => _CreatePostItemRowWidgetState();
}

class _CreatePostItemRowWidgetState extends State<CreatePostItemRowWidget> {
  int _hoveredIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => _hoveredIndex = 0),
            onExit: (_) => setState(() => _hoveredIndex = -1),
            child: _iconWithText(icon: FontAwesomeIcons.videoCamera,text: "Live video", isHovered: _hoveredIndex == 0,color: Colors.red),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => _hoveredIndex = 1),
            onExit: (_) => setState(() => _hoveredIndex = -1),
            child: _iconWithText(icon: FontAwesomeIcons.image,text: "Photos/video", isHovered: _hoveredIndex == 1,color: Colors.green),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() => _hoveredIndex = 2),
            onExit: (_) => setState(() => _hoveredIndex = -1),
            child: _iconWithText(icon: FontAwesomeIcons.smile,text: "Feeling/activity", isHovered: _hoveredIndex == 2,color: Colors.yellow),
          ),
        ],
      ),
    );
  }

  _iconWithText({IconData? icon, String? text, required bool isHovered,Color? color}){
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
        color: isHovered ? Colors.grey[200] : Colors.white,),
      child: Row(
        children: [
          Icon(icon,size: 27,color:color),
          SizedBox(width: 10,),
          Text("$text",style: TextStyle(fontSize: 16,color:  Colors.black45 ,fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}