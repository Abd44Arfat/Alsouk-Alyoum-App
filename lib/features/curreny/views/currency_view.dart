import 'package:alsoukalyoum/features/curreny/views/widgets/currency_view_body.dart';
import 'package:flutter/material.dart';

class CurrencyView extends StatelessWidget {
  const CurrencyView({super.key});
static const String routeName = '/currencyView';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
body: CurrencyViewBody(),

    );
  }
}