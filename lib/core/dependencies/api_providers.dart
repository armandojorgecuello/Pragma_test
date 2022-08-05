import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pragma/core/api/base_client.dart';
import 'package:pragma/ui/utils/constants.dart';

final clientProvider = Provider(((ref) => Dio()));


final catsProvider = Provider(
  (ref) => BaseClient(
    client: ref.watch(clientProvider), 
    host: kBaseApi
  )
);