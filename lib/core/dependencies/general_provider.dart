
import 'package:pragma/core/models/cat_model.dart';
import 'package:riverpod/riverpod.dart';

final searchCatList = StateProvider<List<CatModel>>((ref) => []);