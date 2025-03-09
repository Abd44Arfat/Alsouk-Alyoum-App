import 'package:alsoukalyoum/features/Gold/presentation/manager/gold_cubit/gold_cubit.dart';
import 'package:alsoukalyoum/features/Gold/presentation/views/widgets/gold_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoldListViewBlocBuilder extends StatelessWidget {
  const GoldListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldCubit, GoldState>(
      builder: (context, state) {

if (state is GoldSuccess) {

   return GoldList(golds: state.golds,);

}else if (state is GoldFailure) {
  
  return const Center(
    child: Text('Failed to fetch golds'),
  );


}else{
  return CircularProgressIndicator();}

     
      },
    );
  }
}
