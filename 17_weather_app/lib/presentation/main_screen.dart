import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/presentation/main_view_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('날씨'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(state.currentWeatherInfo.toString()),
            Expanded(
              child: ListView(
                children: state.dailyWeatherInfoList
                    .map((e) => Text(e.toString()))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: state.todayWeatherInfoList
                    .map(
                      (e) => Container(
                        width: 200,
                        color: Color.fromARGB(
                          255, // 알파 값을 255로 설정하여 불투명하게 만듦
                          Random().nextInt(256), // 랜덤한 빨강 값 (0~255)
                          Random().nextInt(256), // 랜덤한 녹색 값 (0~255)
                          Random().nextInt(256), // 랜덤한 파랑 값 (0~255)
                        ),
                        child: Text(
                          e.toString(),
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
