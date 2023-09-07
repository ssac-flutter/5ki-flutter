import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:tada_clone/home/components/bottom_search_input.dart';
import 'package:tada_clone/home/home_state.dart';

class HomeFirstSection extends StatelessWidget {
  final HomeState state;

  const HomeFirstSection({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final marker = NMarker(
      id: "test",
      icon: NOverlayImage.fromAssetImage('assets/marker.png'),
      position: NLatLng(37.51777036747807, 126.88612005018928),
    );
    return Stack(
      children: [
        NaverMap(
          options: const NaverMapViewOptions(),
          onMapReady: (controller) async {
            controller.addOverlay(marker);
            controller.updateCamera(
              NCameraUpdate.fromCameraPosition(
                NCameraPosition(
                  target: NLatLng(37.51777036747807, 126.88612005018928),
                  zoom: 15,
                ),
              ),
            );
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
