import 'package:pragma/core/data_source/cats_data_source.dart';
import 'package:pragma/core/models/restul.dart';
import 'package:pragma/core/models/cat_model.dart';
import 'package:pragma/core/repositories/icat_repository.dart';

class CatRepository extends ICatRepository{

  final CatsDataSource _catsDataSource;

  CatRepository({
    required CatsDataSource catDataSource,
  }) : _catsDataSource = catDataSource;

  @override
  Future<Result<List<CatModel>, BackendError>> getCats() async{
    final result = await _catsDataSource.getCats();
    return result.when(
      fail: (fail)=> Fail(fail), 
      success: (success)=> Success(success)
    );
  }




}