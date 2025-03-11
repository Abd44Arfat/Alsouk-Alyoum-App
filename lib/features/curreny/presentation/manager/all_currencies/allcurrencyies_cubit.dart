import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:alsoukalyoum/features/home/domain/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'allcurrencyies_state.dart';

class AllcurrencyiesCubit extends Cubit<AllcurrencyiesState> {
  AllcurrencyiesCubit(this.homeRepo) : super(AllcurrencyiesInitial());

final HomeRepo homeRepo;
 Future <void>getAllCurrencies()async {

   emit(AllcurrencyiesLoading());
   final result=await homeRepo.getAllCurrencies();
   result.fold((failure)=>emit(AllcurrencyiesFailure(errmessage: failure.message,)), 
   (currencies){
    emit(AllcurrencyiesSuccess(currenciesList: currencies ));
   });  


 }





}
