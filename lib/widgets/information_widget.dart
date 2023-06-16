import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/color.dart';
import 'package:movie_app_poc/constant/dimens.dart';
import 'package:movie_app_poc/images/assets_images.dart';
import 'package:movie_app_poc/pages/actor_detail_page.dart';
class InformationWidget extends StatelessWidget {
  const InformationWidget({Key? key,required this.titleText, required this.detailText}) : super(key: key);
  final String titleText;
  final String detailText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kSP20x, right: kSP20x, top: kSP20x),
      child: Row(
        children: [
          SizedBox(
            width: kSP150x,
            child: Text(titleText,
              style: const TextStyle(fontSize: kSP18x,
                  color: kSecondaryTextColor, fontWeight: FontWeight.bold), ),
          ),
          SizedBox(
            width: kSP200x,
            child: Card(
              color: kPrimaryColor,
              child:Text(
                detailText,
                style: const TextStyle(fontSize: kSP18x,
                    color: kSecondaryTextColor, fontWeight: FontWeight.bold), ),
            ),
          ),
        ],
      ),
    );
  }
}
