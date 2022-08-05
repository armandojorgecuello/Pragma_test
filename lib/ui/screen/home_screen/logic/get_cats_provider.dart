import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pragma/core/dependencies/cats_providers.dart';
import 'package:pragma/core/models/cat_model.dart';
import 'package:pragma/core/models/restul.dart';
import 'package:pragma/core/models/result_state.dart';
import 'package:pragma/ui/screen/home_screen/logic/get_cats_notifier.dart';

final getCatsNotifierProvider = StateNotifierProvider<CatNotifier, ResultState<List<CatModel>, BackendError>>(
  (ref) => CatNotifier(
    catUseCase: ref.watch(catUseCaseProvider)
  )
);