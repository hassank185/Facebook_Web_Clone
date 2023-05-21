


import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/widgets/single_post_card_widget/widgets/comment_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/widgets/single_post_card_widget/data/data.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/widgets/single_post_card_widget/widgets/reaction_button_widget.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/widgets/single_post_card_widget/widgets/reaction_counter_widget.dart';


class PostCardWidget extends StatelessWidget {

  final PostEntity post;
  const PostCardWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            width: 655,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(radius: 20,backgroundImage: AssetImage("${post.profileUrl}"),),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "${post.username}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14, fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        size: 26,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),

                                  SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${post.date} - ",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey),
                                      ),
                                      Icon(
                                        FontAwesomeIcons.earth,
                                        size: 12,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                        SizedBox(height: 10,),
                        Text("${post.postDesc}",maxLines: 3,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15),)


                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  child: Image.asset("${post.postImg}"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    vertical: 10
                  ),
              child: Column(
                children: [
                  ReactionCounterWidget(),
                  Divider(),
                  ReactionButtonWidget(),
                  Divider(),
                  CommentSectionWidget()
                ],
              ),
            )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
