
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pragma/core/data_source/cats_data_source.dart';
import 'package:pragma/core/dependencies/api_providers.dart';
import 'package:pragma/core/use_case/cat_use_case.dart';

final catDataSourceProvider = Provider((ref) => CatsDataSource(
  baseClient: ref.watch(catsProvider)
));

final catUseCaseProvider = Provider((ref) => CatUseCase(
    catsDataSource: ref.watch(catDataSourceProvider), 
  ) 
);
