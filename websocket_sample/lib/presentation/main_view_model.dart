import 'dart:async';

import 'package:flutter/material.dart';
import 'package:websocket_sample/domain/model/price.dart';
import 'package:websocket_sample/domain/repository/price_repository.dart';

class MainViewModel with ChangeNotifier {
  PriceRepository _priceRepository;

  List<Price> _prices = [];

  // 해제
  StreamSubscription<Price>? _subscription;

  List<Price> get prices => List.unmodifiable(_prices);

  MainViewModel(this._priceRepository);

  void fetch() {
    _subscription = _priceRepository.getPriceStream().listen((price) {
      _prices.add(price);
      notifyListeners();
    });
  }

  @override
  void dispose() {
    // 해제
    _subscription?.cancel();
    super.dispose();
  }
}
