import 'package:flutter/material.dart';
import 'package:movie_app_poc/item_views/search_page_item_view/search_page_item_view.dart';
import '../constant/color.dart';
import '../item_views/home_page_item_views/home_page_item_view.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Back",style: TextStyle(
            color: kSecondaryColor,fontWeight: FontWeight.bold)),
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color:  kSecondaryColor),
          onPressed: (){ Navigator.pop(context);},
        ),
      ),
      body: const SearchPageItemView() ,

    );
  }
}
