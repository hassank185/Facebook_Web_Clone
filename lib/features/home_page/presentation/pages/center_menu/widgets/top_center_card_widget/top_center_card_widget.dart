import 'package:facebook_web_clone/features/global/theme/theme.dart';
import 'package:facebook_web_clone/features/home_page/presentation/pages/center_menu/widgets/top_center_card_widget/widgets/single_story_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopCenterCardWidget extends StatefulWidget {
  final Function(int)? onNavItemTapped;
  final int? selectedIndex;

  const TopCenterCardWidget({
    Key? key,
    this.onNavItemTapped,
    this.selectedIndex,
  }) : super(key: key);

  @override
  State<TopCenterCardWidget> createState() => _TopCenterCardWidgetState();
}

class _TopCenterCardWidgetState extends State<TopCenterCardWidget> {
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onNavItemTapped!(index);
  }

  Widget _buildNavItem(
    int index,
    IconData icon,
    String text,
  ) {
    final isSelected = index == _selectedIndex;
    final color = isSelected ? blueColor : Colors.grey;
    final container = isSelected
        ? Container(
            height: 3,
            width: 160,
            color: blueColor,
          )
        : Container();

    return GestureDetector(
      onTap: () => _onNavItemTapped(index),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, right: 10, left: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Icon(icon, size: 25, color: color),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "$text",
                  style: TextStyle(color: color),
                ),
              ],
            ),
            SizedBox(
              width: 155,
            ),
            SizedBox(
              height: 10,
            ),
            container,
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: 650,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNavItem(0, FontAwesomeIcons.bookOpen, "Stories"),
                SizedBox(
                  width: 50,
                ),
                _buildNavItem(1, FontAwesomeIcons.play, "Reels"),
                SizedBox(
                  width: 50,
                ),
                _buildNavItem(2, FontAwesomeIcons.video, "Rooms"),
              ],
            ),
            Row(
              children: [
               _userStoryCardWidget(),
                Expanded(
                  child: Container(
                    height: 190,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 8,
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return SingleStoryCardWidget();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _userStoryCardWidget() {
    return  Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      color: Colors.white70,
      elevation: 1,
      child: Stack(
        children: [
          Container(
            width: 110,
            child: Column(
              children: [
                Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius:
                    BorderRadius.vertical(top: Radius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Create story",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Positioned(
            left: 35,
            bottom: 30,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: blueColor,
                border: Border.all(width: 5, color: Colors.white),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }


}
