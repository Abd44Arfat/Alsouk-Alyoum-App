import 'package:alsoukalyoum/core/utils/failure.dart';
import 'package:alsoukalyoum/features/Gold/data/models/gold_model.dart';
import 'package:dartz/dartz.dart';


abstract class GoldRepo{

  Future<Either<Failure, List<Gold>>> fetchGoldList();


}