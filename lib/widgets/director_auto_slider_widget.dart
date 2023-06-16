import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/color.dart';
import 'package:movie_app_poc/constant/dimens.dart';
import 'package:movie_app_poc/images/assets_images.dart';

import '../pages/actor_detail_page.dart';
class DirectorAutoSliderWidget extends StatelessWidget {
  const DirectorAutoSliderWidget({Key? key,required this.imageURL,required this.directorName}) : super(key: key);
  final String imageURL;
  final String directorName;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: kSP320x,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: false,
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
              MaterialPageRoute(builder: (context) => const ActorDetailPage()),
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

                        //colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn),
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
                  child:  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(kSP20x),
                      child: Text(
                            directorName,
                            style: const TextStyle(fontSize: kFS20x,
                                color: kPrimaryTextColor, fontWeight: FontWeight.bold)
                        ),
                    ),
                  )
                ),

              ]
          ),
        );
      }).toList(),
    );
  }
}
