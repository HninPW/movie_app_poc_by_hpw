import 'package:flutter/material.dart';
import '../constant/color.dart';
import '../item_views/actor_detail_page_item_view/actor_detail_page_item_view.dart';
import '../item_views/story_line_page_item_view/story_line_page_item_view.dart';
class StoryLinePage extends StatelessWidget {
  const StoryLinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: StoryLinePageItemView() ,
    );
  }
}
