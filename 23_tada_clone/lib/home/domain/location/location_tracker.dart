abstract interface class LocationTracker {
  // record 한 번 써 보자 (위도, 경도)
  Future<(double, double)> getLocation();
}