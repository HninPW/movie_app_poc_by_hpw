import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/color.dart';
import 'package:movie_app_poc/constant/dimens.dart';
import 'package:movie_app_poc/images/assets_images.dart';
import 'package:movie_app_poc/pages/story_line_page.dart';
class AutoSliderWidget extends StatelessWidget {
  const AutoSliderWidget({Key? key,required this.imageURL}) : super(key: key);
  final String imageURL;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: kSP320x,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
      items: [1, 2, 3, 4, 5,6,7,8,9,10].map((i) {
        return GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const StoryLinePage()),
            );
          },
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
                            // fit: BoxFit.cover,
                          ),
                      errorWidget: (context, url, error) =>
                          const Center(child: Icon(Icons.error)),
                    ),
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration:  const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.0, 2.0),
                          end: Alignment(0.0, -1.0),
                          colors: <Color>[
                            Color(0xff111111),
                            Color(0x211D1D)
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: kSP65x,
                        height: kSP65x,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kSP50x),
                          color: kSecondaryColor,
                        ),
                        child: IconButton(
                          color: kIconColor,
                          iconSize: kSP35x,
                          icon: const Icon(Icons.play_arrow_outlined,),
                          onPressed: () {  },
                        ),
                      ),
                    )

                  ]
          ),
        );
      }).toList(),
    );
  }
}
