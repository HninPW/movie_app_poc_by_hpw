import 'package:flutter/material.dart';
import 'package:movie_app_poc/widgets/auto_slider_widget.dart';
import 'package:movie_app_poc/widgets/search_bar_widget.dart';
class SearchPageItemView extends StatelessWidget {
  const SearchPageItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchBarWidget(),
      ],
    );
  }
}
