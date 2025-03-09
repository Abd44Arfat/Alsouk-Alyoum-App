import 'package:alsoukalyoum/core/utils/app_colors.dart';
import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'currency_list.dart'; // Import your CurrencyList widget

class CurrencyViewBody extends StatefulWidget {
  const CurrencyViewBody({Key? key}) : super(key: key);

  @override
  _CurrencyViewBodyState createState() => _CurrencyViewBodyState();
}

class _CurrencyViewBodyState extends State<CurrencyViewBody> {
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _isVisible = _scrollController.offset < 100; // Adjust threshold as needed
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
            automaticallyImplyLeading: false, // This removes the back button
          backgroundColor: AppColors.primaryColor,
          expandedHeight: 180.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [



                Visibility(
                  visible: _isVisible,
                  child: Positioned(
                    left: -90,
                    top: 0,
                    bottom: 0,
                    child:
                        Lottie.asset(
                          'assets/animations/currency_animation.json', // Replace with your actual file path
                    
                          fit: BoxFit.cover,
                        ),
                       
                   
                  ),
                  
                ),
                Positioned(
  
  right:20 ,
  top: 80,
  bottom: 0,
  child: Text('تابع أسعار \nالعملات والأسواق\n لحظة بلحظة',style: TextStyles.bold24.copyWith(color: Colors.white),)
  ),
              ],
            ),
          ),
        ),
        CurrencyList(currencies: [],), // Ensure this returns a SliverList
      ],
    );
  }
}