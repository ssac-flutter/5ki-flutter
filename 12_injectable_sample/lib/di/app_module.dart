import 'package:injectable/injectable.dart';

@module
abstract class AppModule {

  @prod
  @singleton
  String get appTitle => '????제목!!! (정식버전)';
}


@module
abstract class AppDebugModule {

  @dev
  @singleton
  String get appTitle => '????제목!!! (개발버전)';
}