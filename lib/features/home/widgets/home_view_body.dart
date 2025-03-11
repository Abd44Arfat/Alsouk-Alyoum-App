import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:alsoukalyoum/core/widgets/custom_stack.dart';
import 'package:alsoukalyoum/features/Gold/presentation/manager/gold_cubit/gold_cubit.dart';
import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:alsoukalyoum/features/home/widgets/custom_chart.dart';
import 'package:alsoukalyoum/features/home/widgets/horizontal_list_bloc_builder.dart';
import 'package:alsoukalyoum/features/home/widgets/time_horizontal_list.dart';
import 'package:alsoukalyoum/features/home/widgets/vertical_currency_list.dart';
import 'package:alsoukalyoum/features/home/widgets/vertical_list_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getCurrencies();
  }

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
              child: HorizontalListBlocBuilder(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
              child: Text('اسعار العملات المتداوله', style: TextStyles.medium20.copyWith(color: Colors.white)),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            VerticalListBlocBuilder(), // Use the corrected VerticalCurrencyList
          ],
        ),
      ),
    );
  }
}