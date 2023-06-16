import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/color.dart';
import 'package:movie_app_poc/constant/dimens.dart';

import '../images/assets_images.dart';

class StoryLineListViewDetailWidget extends StatelessWidget {
  const StoryLineListViewDetailWidget({Key? key,required this.imageURL,required this.titleText, required this.detailText}) : super(key: key);
  final String titleText;
  final String detailText;
  final String imageURL;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          SizedBox(
            width: kSP60x,
            height: kSP60x,
            child: CachedNetworkImage(
              imageUrl:
              imageURL,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kSP10x),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) =>
                  Image.asset(
                    AssetsImages.kPlaceHolderImage,
                    fit: BoxFit.cover,
                  ),
              errorWidget: (context, url, error) =>
              const Center(child: Icon(Icons.error)),
            ),
          ),
          const SizedBox(
            width: kSP10x,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(titleText,
                style: const TextStyle(fontSize: kSP18x,
                    color: kPrimaryTextColor, fontWeight: FontWeight.bold), ),
              Text(detailText,
                style: const TextStyle(fontSize: kSP18x,
                    color: kSecondaryTextColor, fontWeight: FontWeight.bold), ),
            ],
          )
        ],
    );
  }
}
