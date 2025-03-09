import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyItem extends StatelessWidget {

final Currency currency;
  const CurrencyItem({
    super.key, required this.currency,
   
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:16,horizontal: 16 ),
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
              child: SvgPicture.asset(
            currency.image  ,
                fit: BoxFit.cover, // This ensures the image covers the entire container
              )),
              ),
            SizedBox(width: 10),
           
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     currency.name,
                      style: TextStyles.medium15.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Text(
                    currency.rate.toString(),
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
                    currency.rate.toString(),
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



