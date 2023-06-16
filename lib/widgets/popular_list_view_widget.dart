import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/dimens.dart';
import 'package:movie_app_poc/widgets/movie_card_widget.dart';
import 'package:movie_app_poc/widgets/movie_like_widget.dart';

import '../pages/story_line_page.dart';

class PopularListViewWidget extends StatelessWidget {
  const PopularListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kSP300x,
      child: ListView.builder(
          padding:  const EdgeInsets.all(kSP20x),
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
                child: MovieLikeWidget(movieCardheight: kSP300x,movieCardwidth: kSP230x ,votes: "462 votes",rating: "8.4",movieName:"Culpa mia",
                    imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyO0ZLyrYGDYQC26xNh9GBjvCVyjGOWoZ_ag&usqp=CAU"),
              ),
            );
          }),


    );
  }
}
