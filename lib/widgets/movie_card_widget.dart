import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/color.dart';
import 'package:movie_app_poc/constant/dimens.dart';
import 'package:movie_app_poc/images/assets_images.dart';
class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({Key? key,required this.movieCardwidth, required this.movieCardheight, required this.votes, required this.imageURL,required this.movieName, required this.rating}) : super(key: key);
  final String imageURL;
  final String movieName;
  final String rating;
  final String votes;
  final double movieCardwidth;
  final double movieCardheight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SizedBox(
        height: movieCardheight,
        width: movieCardwidth,
        child: Stack(
            children: [
              CachedNetworkImage(
                imageUrl:
                imageURL,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kSP30x),
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
              Padding(
                padding: const EdgeInsets.all(kSP10x),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only( left:kSP5x,top: kSP120x,bottom: kSP10x,),
                          child: Text(
                          movieName,
                          style: const TextStyle(fontSize: kFS18x,
                            color: kPrimaryTextColor,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                        ),

                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: kSP5x,right: kSP10x),
                          child: Icon(Icons.star_border,color: kStarColor,),
                        ),
                        Text(
                          rating,
                          style: const TextStyle(fontSize: kFS18x,
                            color: kSecondaryTextColor, fontWeight: FontWeight.bold)
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: kSP15x),
                          child: Text(
                              votes,
                              style: const TextStyle(fontSize: kFS18x,
                                  color: kSecondaryTextColor,fontWeight: FontWeight.bold)
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
