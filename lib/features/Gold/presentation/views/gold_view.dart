import 'package:alsoukalyoum/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:alsoukalyoum/features/Gold/presentation/views/widgets/gold_view_body.dart';

class GoldView extends StatefulWidget {
  const GoldView({super.key});
  static const String routeName = '/gold';

  @override
  _GoldViewState createState() => _GoldViewState();
}

class _GoldViewState extends State<GoldView> {
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
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController, // Keep the controller for tracking scroll
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false, // Remove default back button
              backgroundColor: AppColors.primaryColor,
              expandedHeight: 180.0,
              floating: false,
              pinned: true,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                

                  return Stack(
                    children: [
                      // Image that disappears on scroll
                      Positioned(
                        left: 10,
                        top: 0,
                        bottom: 0,
                        child: AnimatedOpacity(
                          duration: Duration(milliseconds: 300),
                          opacity: _isVisible ? 1.0 : 0.0,
                          child: SizedBox(
                            height: 150,
                            width: 120,
                            child: Image.asset(
                              'assets/images/saver.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      // Title
                       Positioned(
                        right: 20,
                        top: 80,
                        child: AnimatedOpacity(
                            duration: Duration(milliseconds: 300),
                          opacity: _isVisible ? 1.0 : 0.0,
                          child: Text(
                            'تابع أسعار الذهب\nلحظة بلحظة',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ];
        },
        body: GoldViewBody(),
      ),
    );
  }
}
