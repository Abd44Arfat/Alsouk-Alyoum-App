import 'package:alsoukalyoum/features/onboarding/widgets/onboarding.dart';
import 'package:flutter/cupertino.dart';

class OnboardingPage3ViewBody extends StatelessWidget {
  const OnboardingPage3ViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Onboarding(
        imageUrl: 'assets/images/onboard3.png',
        title: ' بيانات دقيقة من مصادر موثوقة',
        subTitle:
            'نقدم لك معلومات موثوقة حول أسعار الصرف من أفضل المصادر، لضمان اتخاذ قرارات ذكية');
  }
}
