import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/color.dart';
import 'package:movie_app_poc/constant/dimens.dart';

import '../pages/search_page.dart';
class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key,this.isHomePage=true}) : super(key: key);
  final bool isHomePage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kSP20x, top: kSP40x),
            child: SizedBox(
              width: kSP280x,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kSearchFieldColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(kSP20x),
                  ),
                  hintStyle: const TextStyle(color: kSecondaryTextColor),
                  hintText: 'Search movies...',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kSP30x, right: kSP20x,top: kSP40x),
            child: Container(
              width: kSP60x,
              height: kSP55x,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kSP10x),
                color: kSecondaryColor,
              ),
              child: IconButton(
                color: kIconColor,
                iconSize: kSP35x,
                icon: const Icon(Icons.search,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()),
                  );
                },
            ),
            ),
          ),
        ],
      ),
    );
  }
}
