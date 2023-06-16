import 'package:flutter/material.dart';

import '../constant/color.dart';
import '../constant/dimens.dart';
class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kSP20x, right: kSP20x),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(title,
          style: const TextStyle(fontSize: kSP28x,
              color: kPrimaryTextColor, fontWeight: FontWeight.bold), ),
      ),
    );
  }
}
