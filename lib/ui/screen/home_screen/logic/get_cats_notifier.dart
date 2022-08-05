import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pragma/core/dependencies/general_provider.dart';
import 'package:pragma/core/models/cat_model.dart';
import 'package:pragma/core/models/restul.dart';
import 'package:pragma/core/models/result_state.dart';
import 'package:pragma/core/use_case/cat_use_case.dart';

class CatNotifier extends StateNotifier<ResultState<List<CatModel>, BackendError>>{
  final CatUseCase _catUseCase;
  CatNotifier({
    required CatUseCase catUseCase,
  }) : _catUseCase = catUseCase,
    super(ResultState.initial());


  Future getCats()async{
    state = ResultState.loading();
    final response = await _catUseCase.call();

    state = response.when(
      fail: (fail) => ResultState.error(fail),
      success: (success) => ResultState.data(success)
    );
  }

  getInitItems(){

  }

  searchByRaze(String query, WidgetRef ref){
    List<CatModel> _result = [];
    for(var catByRaze in state.data!){
      if(catByRaze.name!.toLowerCase().contains(query)){
        _result.add(catByRaze);
      }
    }
    ref.read(searchCatList.notifier).state = _result;
  }


}