


import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:flutter/material.dart';

class CommentSectionWidget extends StatelessWidget {
  const CommentSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 55,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child:  Row(
            children: [
              Container(
                width: 30,
                height: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CircleAvatar(radius: 15,),
                ),
              ),

              Expanded(
                  child: Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: bodyColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      //controller: _descriptionController,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Post your comment...",
                          hintStyle: TextStyle(color: Colors.black45),

                      ),
                    ),
                  )),
            ],
          ),
        ),
      );
    }
  }

