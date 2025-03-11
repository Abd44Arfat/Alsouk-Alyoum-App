import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:alsoukalyoum/features/Gold/data/models/gold_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoldItem extends StatelessWidget {


  const GoldItem({
    super.key, required this.gold,
   
  });
final Gold gold;
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
                     gold.name ,
                      style: TextStyles.medium15.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                        'شراء  ' ,
                          style: TextStyles.regular13.copyWith(color: Colors.grey),
                        ),
                        Text(
                       gold.purchasePrice.toString(),
                          style: TextStyles.medium15.copyWith(color: Colors.white),
                        ),
                 const      SizedBox(width:30 ,),
                         Text(
                        'بيع  ' ,
                          style: TextStyles.regular13.copyWith(color: Colors.grey),
                        ),
                        Text(
                       gold.sellingPrice.toString(),
                          style: TextStyles.medium15.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
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



