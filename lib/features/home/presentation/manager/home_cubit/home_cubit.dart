import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:alsoukalyoum/features/home/domain/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());

  

final HomeRepo homeRepo;
 Future <void>getCurrencies()async {
emit(TimeLoading());
final result=await homeRepo.getCurrenciesTime();
result.fold((failure)=>emit(TimeFailure(errmessage: failure.message,)), 
(currencies){
  emit(TimeSuccess(times: currencies ));
  });

}



}
