import 'package:alsoukalyoum/features/onboarding/widgets/onboarding.dart';
import 'package:flutter/cupertino.dart';

class OnboardingPage1ViewBody extends StatelessWidget {
  const OnboardingPage1ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Onboarding(
      imageUrl: 'assets/images/onboard1.png',
      title: 'منصة لمتابعة أسعار السوق الموازية في مصر !',
      subTitle:
          'تابع أسعار العملات والأسواق لحظة بلحظة، وكن على اطلاع دائم على التغيرات في السوق الموازية',
    );
  }
}
