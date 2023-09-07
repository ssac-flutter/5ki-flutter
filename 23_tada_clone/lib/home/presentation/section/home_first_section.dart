import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

import '../components/bottom_search_input.dart';
import '../home_state.dart';

class HomeFirstSection extends StatelessWidget {
  final HomeState state;

  const HomeFirstSection({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        NaverMap(
          options: const NaverMapViewOptions(),
          onMapReady: (controller) async {
            if (state.currentLocation != null) {
              final (latitude, longitude) = state.currentLocation!;

              final marker = NMarker(
                id: "current",
                icon: const NOverlayImage.fromAssetImage('assets/marker.png'),
                position: NLatLng(latitude, longitude),
              );
              controller.addOverlay(marker);
              controller.updateCamera(
                NCameraUpdate.fromCameraPosition(
                  NCameraPosition(
                    target: NLatLng(latitude, longitude),
                    zoom: 15,
                  ),
                ),
              );
            }
            print("네이버 맵 로딩됨!");
          },
        ),
        Column(
          children: [
            const Spacer(),
            BottomSearchInput(state: state),
          ],
        ),
      ],
    );
  }
}
