import 'package:pragma/core/api/base_client.dart';
import 'package:pragma/core/models/cat_model.dart';
import 'package:pragma/core/models/restul.dart';
import 'package:pragma/ui/utils/constants.dart';

class CatsDataSource{

  final BaseClient _baseClient;

  CatsDataSource({
    required BaseClient  baseClient,
  }) : _baseClient = baseClient;


  Future<Result<List<CatModel>, BackendError>> getCats()async{
    final result = 
    await _baseClient.makeRequest(
      method: Method.get, 
      path: "/v1/breeds",
      headers: {
        'x-api-key' : kApiKey
      }
    );
    return result.when(
      fail: (fail)  => Fail(fail), 
      success: ( success ){
        List<CatModel> _response = [];
        List listCats = success;
        for (var cat in listCats) {
          final temporalItem = CatModel.fromJson(cat);
          _response.add(temporalItem);
        }
        return Success(_response);
      }
    );
  }
 
}