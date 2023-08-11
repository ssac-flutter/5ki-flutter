import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @singleton
  Dio get dio => Dio();
}
