import 'package:flutter/material.dart';
import 'package:movie_app_poc/constant/color.dart';
import 'package:movie_app_poc/constant/dimens.dart';
class MovieTypeWidget extends StatelessWidget {
  const MovieTypeWidget({Key? key ,this.isFirstText = false, required this.textBoxName}) : super(key: key);
  final bool isFirstText;
  final String textBoxName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: kSP100x,
      height: kSP55x,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kSP10x),
        color: isFirstText ? kSecondaryColor : kPrimaryColor,
      ),
      child: Center(
        child: Text(
            textBoxName,
            style: const TextStyle(fontSize: kFS18x,
              color: kPrimaryTextColor,)),
      ),
    );
  }
}