import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:image_search_app/domain/model/photo.dart';

part 'main_state.freezed.dart';

part '../../presentation/main/main_state.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    List<Photo> photos,
    bool isLoading,
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) => _$MainStateFromJson(json);
}
