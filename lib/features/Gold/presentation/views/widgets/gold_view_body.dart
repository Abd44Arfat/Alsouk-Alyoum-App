import 'package:alsoukalyoum/features/Gold/presentation/manager/gold_cubit/gold_cubit.dart';
import 'package:alsoukalyoum/features/Gold/presentation/views/widgets/gold_list.dart';
import 'package:alsoukalyoum/features/Gold/presentation/views/widgets/gold_list_vie_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldViewBody extends StatefulWidget {
  const GoldViewBody({super.key});

  @override
  State<GoldViewBody> createState() => _GoldViewBodyState();
}

class _GoldViewBodyState extends State<GoldViewBody> {

  void initState() {
    super.initState();
    // Fetch characters using the Bloc
    context.read<GoldCubit>().getGolds();
  }

  @override
  Widget build(BuildContext context) {
    return GoldListViewBlocBuilder();
  }
}

