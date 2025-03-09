import 'package:alsoukalyoum/core/helper_fuctions/get_it_service.dart';
import 'package:alsoukalyoum/features/home/domain/repo/home_repo.dart';
import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:alsoukalyoum/features/home/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = '/homeView';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider(
        create: (context) => HomeCubit(getIt.get<HomeRepo>()),
        child: HomeViewBody(),
      ),
    );
  }
}
