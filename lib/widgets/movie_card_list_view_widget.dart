import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/dimens.dart';
import 'package:movie_app_poc/widgets/movie_card_widget.dart';

import '../pages/story_line_page.dart';

class MovieCardListViewWidget extends StatelessWidget {
  const MovieCardListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kSP250x,
      child: ListView.builder(
          padding:  const EdgeInsets.all(20),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StoryLinePage()),
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(right: kSP20x),
                child: MovieCardWidget(movieCardheight: kSP200x,movieCardwidth: kSP250x ,votes: "2990 votes",rating: "7.9",movieName:"John Wick:Chapter4",imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7bvsR4DIlaW5s7dUbZ_0stdP4KbWhNAYILw&usqp=CAU"),
              ),
            );
          }),


    );
  }
}
