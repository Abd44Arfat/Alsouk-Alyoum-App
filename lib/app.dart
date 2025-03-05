
import 'package:alsoukalyoum/core/helper_fuctions/on_generate_routes.dart';
import 'package:alsoukalyoum/features/main_view/views/main_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
  scaffoldBackgroundColor: Colors.black, // This sets the background color
       
        
        
      ),
      debugShowCheckedModeBanner: false,
      
      initialRoute: MainView.routeName,
     onGenerateRoute: onGenerateRoute,
    );
  }
}
