import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Onboarding extends StatelessWidget {
  const Onboarding(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subTitle});
  final String imageUrl, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset(
          
          imageUrl, )),
               const SizedBox(
          height: 30,
        ),
        Text(
          textAlign: TextAlign.center  ,
          title,
          style: TextStyles.bold24.copyWith(color: Colors.white,)
              ,
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
            width: 340,
            child: Text(
              subTitle,
              style: TextStyles.medium15.copyWith(color:Colors.grey),
                 
              textAlign: TextAlign.center,
            )),
      ],
    );
  }
}