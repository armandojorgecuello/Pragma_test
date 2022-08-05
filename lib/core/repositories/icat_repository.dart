import 'package:pragma/core/models/cat_model.dart';
import 'package:pragma/core/models/restul.dart';

abstract class ICatRepository{

  Future<Result<List<CatModel> , BackendError>> getCats();

}