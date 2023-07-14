import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message.freezed.dart';

part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String name,
    required String message,
    required int status,    // 1 = 입장, 2 = 퇴장, 3 = 채팅
  }) = _Message;

  factory Message.fromJson(Map<String, Object?> json) => _$MessageFromJson(json);
}

enum ChatStatus {
  enter,
  exit,
  chat,
}