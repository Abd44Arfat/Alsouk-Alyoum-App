import 'package:alsoukalyoum/features/Gold/data/models/gold_model.dart';
import 'package:alsoukalyoum/features/Gold/domain/repo/gold_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  GoldCubit(this.goldRepo) : super(GoldInitial());




final GoldRepo goldRepo;
 Future <void>getGolds()async {
emit(GoldLoading());
final result=await goldRepo.fetchGoldList();
result.fold((failure)=>emit(GoldFailure(errmessage: failure.message,)), 
(golds){
  emit(GoldSuccess(golds: golds ));
  });

}



}
