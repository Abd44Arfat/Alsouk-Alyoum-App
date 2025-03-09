import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyItem extends StatelessWidget {
  final TimeModel currencyTime; // Renamed for clarity

  const CurrencyItem({
    super.key,
    required this.currencyTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          for (var currency in currencyTime.currencies) // Loop through currencies
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: SvgPicture.network(
                          currency.image, // Correctly passing currency image
                          fit: BoxFit.cover, // This ensures the image covers the entire container
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            currency.name, // Correctly displaying currency name
                            style: TextStyles.medium15.copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            currency.rate.toString(), // Displaying currency rate
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.3,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
