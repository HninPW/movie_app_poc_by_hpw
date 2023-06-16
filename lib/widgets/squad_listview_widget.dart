import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/dimens.dart';
import 'package:movie_app_poc/widgets/story_line_listview_detail_widget.dart';


class SquadListviewWidget extends StatelessWidget {
  const SquadListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kSP100x,
      child: ListView.builder(
          padding:  const EdgeInsets.only(left: kSP20x,right: kSP20x),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return  const Padding(
                padding: EdgeInsets.only(right: kSP30x),
                child: StoryLineListViewDetailWidget(imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-UgKYtFgeRWBWMFkfmb04p7FenhiJJmUZJA&usqp=CAU",
                    titleText: "Crew", detailText: "Walter Murch")
            );
          }),


    );
  }
}
