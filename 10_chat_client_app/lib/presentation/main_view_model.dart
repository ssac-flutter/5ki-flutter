import 'dart:async';

import 'package:chat_client_app/domain/model/message.dart';
import 'package:chat_client_app/domain/repository/chat_repository.dart';
import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  final ChatRepository _chatRepository;

  StreamSubscription<Message>? _subscription;

  List<Message> messages = [];

  MainViewModel(this._chatRepository) {
    startMessageStream();
  }

  void startMessageStream() {
    if (_subscription?.isPaused ?? false) {
      _subscription?.resume();
      return;
    }

    _subscription = _chatRepository.getMessageStream().listen((message) {
      messages.add(message);
      notifyListeners();
    });

    sendMessage('', '누군가가 입장하셨습니다', 1);
  }

  void pauseMessageStream() {
    _subscription?.pause();
  }

  void sendMessage(String name, String message, [int? status = 3]) {
    final chatMessage = Message(
      name: name,
      message: message,
      status: status ?? 3,
    );

    _chatRepository.sendMessage(chatMessage);
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
