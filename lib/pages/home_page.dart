import 'package:flutter/material.dart';
import '../constant/color.dart';
import '../item_views/home_page_item_views/home_page_item_view.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: HomePageItemView() ,
    );
  }
}
