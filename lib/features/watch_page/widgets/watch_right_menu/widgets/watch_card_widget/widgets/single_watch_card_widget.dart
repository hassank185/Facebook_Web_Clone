



import 'package:facebook_web_clone/features/watch_page/widgets/watch_right_menu/data/watch_data.dart';
import 'package:facebook_web_clone/features/watch_page/widgets/watch_right_menu/widgets/watch_card_widget/widgets/watch_reactions_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingleWatchCardWidget extends StatelessWidget {
  final WatchEntity watch;
  const SingleWatchCardWidget({Key? key, required this.watch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            width: 830,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(radius: 20, backgroundImage: AssetImage(
                              "${watch.profileUrl}"),),
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
                                          "${watch.username}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
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
                                        "${watch.date} - ",
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
                      Text("${watch.postDesc}", maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15),)


                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  child: Image.asset("${watch.postImg}"),
                ),
                WatchReactionWidget()

              ],
            ),
          ),
        ),
      ],
    );
  }
}