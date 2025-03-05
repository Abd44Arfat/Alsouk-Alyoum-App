import 'package:alsoukalyoum/core/widgets/custom_stack.dart';
import 'package:alsoukalyoum/features/onboarding/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
static const routeName = '/onboardingView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomStack(child: OnboardingViewBody()),
    );
 
  
}

  
}