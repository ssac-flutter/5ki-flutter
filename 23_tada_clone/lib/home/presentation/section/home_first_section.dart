import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:tada_clone/home/domain/location/location_tracker.dart';

import '../components/bottom_search_input.dart';
import '../home_event.dart';
import '../home_state.dart';

class HomeFirstSection extends StatefulWidget {
  final HomeState state;
  final LocationTracker locationTracker;
  final void Function(HomeEvent event) onEvent;

  const HomeFirstSection({
    super.key,
    required this.state,
    required this.locationTracker,
    required this.onEvent,
  });

  @override
  State<HomeFirstSection> createState() => _HomeFirstSectionState();
}

class _HomeFirstSectionState extends State<HomeFirstSection> {
  var isVisibleCurrentPositionButton = false;

  late NaverMapController _controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              NaverMap(
                options: const NaverMapViewOptions(
                  scaleBarEnable: false,
                ),
                onCameraIdle: () {},
                onCameraChange: (reason, animated) {
                  if (reason == NCameraUpdateReason.gesture) {
                    setState(() {
                      isVisibleCurrentPositionButton = true;
                    });
                  }
                },
                onMapReady: (controller) async {
                  await _getLocation(controller);
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
              if (isVisibleCurrentPositionButton)
                Positioned(
                  right: 16,
                  bottom: 22,
                  child: CurrentPositionButton(
                    onClick: () {
                      _getLocation(_controller);
                    },
                  ),
                )
            ],
          ),
        ),
        BottomSearchInput(
          state: widget.state,
          onEvent: widget.onEvent,
        ),
      ],
    );
  }

  Future<void> _getLocation(NaverMapController controller) async {
    _controller = controller;

    final location = await widget.locationTracker.getLocation();
    final (latitude, longitude) = location;

    final marker = NMarker(
      id: "current",
      icon: const NOverlayImage.fromAssetImage('assets/marker.png'),
      position: NLatLng(latitude, longitude),
    );

    controller.clearOverlays();
    controller.addOverlay(marker);

    controller.updateCamera(
      NCameraUpdate.fromCameraPosition(
        NCameraPosition(
          target: NLatLng(latitude, longitude),
          zoom: 15,
        ),
      ),
    );

    await Future.delayed(const Duration(milliseconds: 500));

    setState(() {
      isVisibleCurrentPositionButton = false;
    });
  }
}

class CurrentPositionButton extends StatelessWidget {
  final void Function() onClick;

  const CurrentPositionButton({
    super.key,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: const Icon(Icons.my_location),
      ),
    );
  }
}
