import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/dimens.dart';
import 'package:movie_app_poc/widgets/auto_slider_widget.dart';
import 'package:movie_app_poc/widgets/movie_card_list_view_widget.dart';
import 'package:movie_app_poc/widgets/popular_list_view_widget.dart';
import 'package:movie_app_poc/widgets/search_bar_widget.dart';
import 'package:movie_app_poc/widgets/single_child_scroll_view_widget.dart';
import 'package:movie_app_poc/widgets/you_may_like_list_view_widget.dart';

import '../../constant/color.dart';
import '../../widgets/director_auto_slider_widget.dart';
class HomePageItemView extends StatelessWidget {
  const HomePageItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SearchBarWidget(),
        SingleChildScrollViewWidget(),
        AutoSliderWidget(imageURL: "https://www.hindustantimes.com/ht-img/img/2023/03/13/550x309/Boruto_Naruto_next_generations_1678671204076_1678671209565_1678671209565.jpg"),
        MovieCardListViewWidget(),
        Padding(
          padding: EdgeInsets.only(left: kSP20x , right: kSP20x, top: kSP20x, bottom: kSP10x),
          child: Text('You may like',
              style: TextStyle(
                  fontSize: kSP25x,
                color: kPrimaryTextColor,fontWeight: FontWeight.bold)),
        ),
        YouMayLikeListViewWidget(),
        Padding(
          padding: EdgeInsets.only(left: kSP20x , right: kSP20x, top: kSP20x, bottom: kSP10x),
          child: Text('Popular',
              style: TextStyle(
                  fontSize: kSP25x,
                  color: kPrimaryTextColor,fontWeight: FontWeight.bold)),
        ),

        PopularListViewWidget(),
        SizedBox(height: kSP20x,),
        DirectorAutoSliderWidget(directorName: "Gary Oldman",
            imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTR-ObnQ906QeuOEBhCQ3h0tmQSO3KIZJnB-Q&usqp=CAU"),
        SizedBox(height: kSP20x,),
      ],
    );
  }
}
