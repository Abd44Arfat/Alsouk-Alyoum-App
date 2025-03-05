import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.text, required this.image});

  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: [
          Container(
            color: Colors.transparent,
            child: SvgPicture.asset(image,colorFilter : ColorFilter.mode(Colors.blue, BlendMode.srcIn),),
          ),
          Text(text,),
        ],
      ),
    );
  }
}




class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.image, required this.text});

  final String image;
   final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: [
          Container(
            color: Colors.transparent,
            child: SvgPicture.asset(image),
          ),
          Text(text)
        ],
      ),
    );
  }
}