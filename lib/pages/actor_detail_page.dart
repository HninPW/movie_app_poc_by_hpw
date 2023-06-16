import 'package:flutter/material.dart';
import '../constant/color.dart';
import '../item_views/actor_detail_page_item_view/actor_detail_page_item_view.dart';
class ActorDetailPage extends StatelessWidget {
  const ActorDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: ActorDetailPageItemView() ,
    );
  }
}
