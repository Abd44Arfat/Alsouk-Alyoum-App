import 'package:alsoukalyoum/features/onboarding/widgets/onboarding.dart';
import 'package:flutter/material.dart';

class OnboardingPage2ViewBody extends StatelessWidget {
  const OnboardingPage2ViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Onboarding(
        imageUrl: 
            'assets/images/onboard2.png',
          
        title: 'تحديثات فورية على مدار الساعة',
        subTitle:
            'احصل على إشعارات بالأسعار المحدثة فور حدوث أي تغيير، ولا تفوت أي فرصة');
  }
}
