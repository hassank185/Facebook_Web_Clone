import 'package:facebook_web_clone/features/watch_page/widgets/watch_right_menu/data/watch_data.dart';
import 'package:facebook_web_clone/features/watch_page/widgets/watch_right_menu/widgets/watch_card_widget/widgets/single_watch_card_widget.dart';
import 'package:flutter/material.dart';


class WatchCardWidget extends StatefulWidget {
  const WatchCardWidget({Key? key}) : super(key: key);

  @override
  State<WatchCardWidget> createState() => _WatchCardWidgetState();
}

class _WatchCardWidgetState extends State<WatchCardWidget> {

  List<WatchEntity> watchData = WatchListClass.watchData;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: watchData.length,
        itemBuilder: (context, index) {
          final watch = watchData[index];
          return SingleWatchCardWidget(
            watch: watch,
          );
        });
  }
}
