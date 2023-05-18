

import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:flutter/material.dart';

class CreatePostFieldWidget extends StatefulWidget {
  const CreatePostFieldWidget({Key? key}) : super(key: key);

  @override
  State<CreatePostFieldWidget> createState() => _CreatePostFieldWidgetState();
}

class _CreatePostFieldWidgetState extends State<CreatePostFieldWidget> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 20,),
                  SizedBox(width: 10,),
                  Expanded(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        setState(() {
                          _isHover = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          _isHover = false;
                        });
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),

                          height: 45,
                          decoration: BoxDecoration(
                              color: _isHover ? Colors.grey[200] : bodyColor,
                              borderRadius: BorderRadius.circular(30),

                          ),
                          child: Align(alignment: Alignment.centerLeft,child: Text("What's on your mind, Muhammad?",style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w600,fontSize: 16)))
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}