import 'package:pragma/core/data_source/cats_data_source.dart';
import 'package:pragma/core/models/cat_model.dart';
import 'package:pragma/core/models/restul.dart';

class CatUseCase {
  final CatsDataSource _catsDataSource;

  CatUseCase({
    required CatsDataSource catsDataSource,
  }) : _catsDataSource = catsDataSource;

  Future<Result<List<CatModel>, BackendError>> call() => _catsDataSource.getCats();



}