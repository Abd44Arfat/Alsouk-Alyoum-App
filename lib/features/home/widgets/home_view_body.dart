import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:alsoukalyoum/core/widgets/custom_stack.dart';
import 'package:alsoukalyoum/features/home/widgets/custom_chart.dart';
import 'package:alsoukalyoum/features/home/widgets/time_horizontal_list.dart';
import 'package:alsoukalyoum/features/home/widgets/vertical_currency_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomStack(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CurrencyChart(),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '1 دولار = 56 ج .م',
                  style: TextStyles.bold32.copyWith(color: Colors.white),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/uparrow.svg'),
                    Text(
                      ' سعر الدولار زاد 2.10 عن امبارح',
                      style: TextStyles.medium18.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: TimeHorizontalList(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
                  SliverToBoxAdapter(
              child: Text('اسعار العملات المتداوله',style: TextStyles.medium20.copyWith(color: Colors.white),),
              
            ),
                SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            const VerticalCurrencyList(), // Use the corrected VerticalCurrencyList
          ],
        ),
      ),
    );
  }
}