import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoldItem extends StatelessWidget {


  const GoldItem({
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8,horizontal: 16), 
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                
                  shape: BoxShape.circle,
                ),
             child: ClipOval(
              child: Image.asset(
                'assets/images/gold.png',
                fit: BoxFit.cover, // This ensures the image covers the entire container
              )),
              ),
            SizedBox(width: 10),
           
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'الريال السعودي',
                      style: TextStyles.medium15.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'زياده 1.90 ج.م',
                      style: TextStyles.regular13.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),
 
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                SvgPicture.asset('assets/images/uparrow.svg'),
                   const SizedBox(width: 4),
                  Text(
                    ' 15.90 ج.م',
                    style: TextStyles.medium15.copyWith(color: Colors.white),
                  ),
                 
                 
                ],
              ),
          
             
            ],
            
          ),


 Padding(
   padding: const EdgeInsets.all(8.0),
   child: Divider(
              color: Colors.grey,
              thickness: 0.3,
            ),
 ),

        ],

        
      ),
      
    );
  }
}



