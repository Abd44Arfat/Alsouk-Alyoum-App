import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:alsoukalyoum/core/widgets/custom_button.dart';
import 'package:alsoukalyoum/features/main_view/views/main_view.dart';
import 'package:alsoukalyoum/features/onboarding/widgets/onboarding_page1_view_body.dart';
import 'package:alsoukalyoum/features/onboarding/widgets/onboarding_page2_view_body.dart';
import 'package:alsoukalyoum/features/onboarding/widgets/onboarding_page3_view_body.dart';
import 'package:flutter/material.dart';


class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          currentIndex < 2
              ? SizedBox(
                  height: 50,
                  child: Row(
                   
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, MainView.routeName);
                        },
                        child: Text(
                          'تخطي',
                          style: TextStyles.regular13.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer),
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox(
                  height: 50,
                ),
          Flexible(
            child: SizedBox(
              height: 600,
              child: PageView(
                onPageChanged: (index) {
                  currentIndex = index;
                  setState(() {});
                },
                controller: _controller,
                children: const [
                  OnboardingPage3ViewBody(),
                  OnboardingPage2ViewBody(),
                  OnboardingPage1ViewBody(),
                  
                
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        
          CustomButton(
            onPressed: () {
              if (currentIndex < 2) {
                _controller.nextPage(
                  duration: const Duration(milliseconds: 150),
                  curve: Curves.easeIn,
                );
              } else {
 Navigator.pushReplacementNamed(
                              context, MainView.routeName);
              }
            }, text:currentIndex == 2 ?'اعرف الاسعار دلوقتي':'التالي' ,
          ),
            const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  dynamic Function()? skipAction(context) {
    return () {
  
      Navigator.pushReplacementNamed(context, MainView.routeName);
    };
  }
}
