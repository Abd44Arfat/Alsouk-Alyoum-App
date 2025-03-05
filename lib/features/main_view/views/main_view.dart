import 'package:alsoukalyoum/features/main_view/widgets/bottom_nav_bar.dart';
import 'package:alsoukalyoum/features/main_view/widgets/main_view_body.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
static const String routeName = '/mainView';

  @override
  State<MainView> createState() => _MainViewState();
}
 int currentViewIndex = 0;
class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: MainViewBody(currentViewIndex: currentViewIndex,),

      bottomNavigationBar: CustomBottomNavigationBar(onItemTapped: (index) { 

   currentViewIndex = index;

            setState(() {});

       },),
    );
  }
}