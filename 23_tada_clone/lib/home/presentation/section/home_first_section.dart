import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:tada_clone/home/domain/location/location_tracker.dart';

import '../components/bottom_search_input.dart';
import '../home_state.dart';

class HomeFirstSection extends StatelessWidget {
  final HomeState state;
  final LocationTracker locationTracker;

  const HomeFirstSection({
    super.key,
    required this.state,
    required this.locationTracker,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              NaverMap(
                options: const NaverMapViewOptions(),
                onMapReady: (controller) async {
                  final location = await locationTracker.getLocation();
                  final (latitude, longitude) = location;

                  final marker = NMarker(
                    id: "current",
                    icon:
                        const NOverlayImage.fromAssetImage('assets/marker.png'),
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
                  print("네이버 맵 로딩됨!");
                },
              ),
              Column(
                children: [
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        BottomSearchInput(state: state),
      ],
    );
  }
}
