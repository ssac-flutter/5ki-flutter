import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:get_it/get_it.dart';
import 'package:tada_clone/core/router.dart';
import 'package:tada_clone/home/domain/use_case/search_location_use_case.dart';
import 'package:tada_clone/home/presentation/home_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  await dotenv.load();
  final naverMapClientId = dotenv.env['NAVER_MAP_CLIENT_ID'];
  final kakaoRestApiKey = dotenv.env['KAKAO_REST_API_KEY'];

  GetIt.instance.registerFactory(
      () => HomeViewModel(SearchLocationUseCase(kakaoRestApiKey!)));

  await NaverMapSdk.instance.initialize(clientId: naverMapClientId);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          background: Colors.white,
        ),
        useMaterial3: true,
      ),
    );
  }
}
