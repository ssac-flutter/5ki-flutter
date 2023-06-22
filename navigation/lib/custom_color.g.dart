import 'package:flutter/material.dart';

const customcolor1 = Color(0xFF270EAF);
const customcolor2 = Color(0xFF69C038);
const customcolor3 = Color(0xFF3A3B1A);
const customcolor4 = Color(0xFF4DAD5B);


CustomColors lightCustomColors = const CustomColors(
  sourceCustomcolor1: Color(0xFF270EAF),
  customcolor1: Color(0xFF5248D6),
  onCustomcolor1: Color(0xFFFFFFFF),
  customcolor1Container: Color(0xFFE3DFFF),
  onCustomcolor1Container: Color(0xFF110069),
  sourceCustomcolor2: Color(0xFF69C038),
  customcolor2: Color(0xFF2C6C00),
  onCustomcolor2: Color(0xFFFFFFFF),
  customcolor2Container: Color(0xFF9EF96A),
  onCustomcolor2Container: Color(0xFF082100),
  sourceCustomcolor3: Color(0xFF3A3B1A),
  customcolor3: Color(0xFF606200),
  onCustomcolor3: Color(0xFFFFFFFF),
  customcolor3Container: Color(0xFFE5E972),
  onCustomcolor3Container: Color(0xFF1C1D00),
  sourceCustomcolor4: Color(0xFF4DAD5B),
  customcolor4: Color(0xFF006E27),
  onCustomcolor4: Color(0xFFFFFFFF),
  customcolor4Container: Color(0xFF96F89D),
  onCustomcolor4Container: Color(0xFF002107),
);

CustomColors darkCustomColors = const CustomColors(
  sourceCustomcolor1: Color(0xFF270EAF),
  customcolor1: Color(0xFFC4C0FF),
  onCustomcolor1: Color(0xFF2000A4),
  customcolor1Container: Color(0xFF382BBD),
  onCustomcolor1Container: Color(0xFFE3DFFF),
  sourceCustomcolor2: Color(0xFF69C038),
  customcolor2: Color(0xFF83DC51),
  onCustomcolor2: Color(0xFF133800),
  customcolor2Container: Color(0xFF1F5100),
  onCustomcolor2Container: Color(0xFF9EF96A),
  sourceCustomcolor3: Color(0xFF3A3B1A),
  customcolor3: Color(0xFFC9CD59),
  onCustomcolor3: Color(0xFF313300),
  customcolor3Container: Color(0xFF484A00),
  onCustomcolor3Container: Color(0xFFE5E972),
  sourceCustomcolor4: Color(0xFF4DAD5B),
  customcolor4: Color(0xFF7ADB83),
  onCustomcolor4: Color(0xFF003911),
  customcolor4Container: Color(0xFF00531C),
  onCustomcolor4Container: Color(0xFF96F89D),
);



/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceCustomcolor1,
    required this.customcolor1,
    required this.onCustomcolor1,
    required this.customcolor1Container,
    required this.onCustomcolor1Container,
    required this.sourceCustomcolor2,
    required this.customcolor2,
    required this.onCustomcolor2,
    required this.customcolor2Container,
    required this.onCustomcolor2Container,
    required this.sourceCustomcolor3,
    required this.customcolor3,
    required this.onCustomcolor3,
    required this.customcolor3Container,
    required this.onCustomcolor3Container,
    required this.sourceCustomcolor4,
    required this.customcolor4,
    required this.onCustomcolor4,
    required this.customcolor4Container,
    required this.onCustomcolor4Container,
  });

  final Color? sourceCustomcolor1;
  final Color? customcolor1;
  final Color? onCustomcolor1;
  final Color? customcolor1Container;
  final Color? onCustomcolor1Container;
  final Color? sourceCustomcolor2;
  final Color? customcolor2;
  final Color? onCustomcolor2;
  final Color? customcolor2Container;
  final Color? onCustomcolor2Container;
  final Color? sourceCustomcolor3;
  final Color? customcolor3;
  final Color? onCustomcolor3;
  final Color? customcolor3Container;
  final Color? onCustomcolor3Container;
  final Color? sourceCustomcolor4;
  final Color? customcolor4;
  final Color? onCustomcolor4;
  final Color? customcolor4Container;
  final Color? onCustomcolor4Container;

  @override
  CustomColors copyWith({
    Color? sourceCustomcolor1,
    Color? customcolor1,
    Color? onCustomcolor1,
    Color? customcolor1Container,
    Color? onCustomcolor1Container,
    Color? sourceCustomcolor2,
    Color? customcolor2,
    Color? onCustomcolor2,
    Color? customcolor2Container,
    Color? onCustomcolor2Container,
    Color? sourceCustomcolor3,
    Color? customcolor3,
    Color? onCustomcolor3,
    Color? customcolor3Container,
    Color? onCustomcolor3Container,
    Color? sourceCustomcolor4,
    Color? customcolor4,
    Color? onCustomcolor4,
    Color? customcolor4Container,
    Color? onCustomcolor4Container,
  }) {
    return CustomColors(
      sourceCustomcolor1: sourceCustomcolor1 ?? this.sourceCustomcolor1,
      customcolor1: customcolor1 ?? this.customcolor1,
      onCustomcolor1: onCustomcolor1 ?? this.onCustomcolor1,
      customcolor1Container: customcolor1Container ?? this.customcolor1Container,
      onCustomcolor1Container: onCustomcolor1Container ?? this.onCustomcolor1Container,
      sourceCustomcolor2: sourceCustomcolor2 ?? this.sourceCustomcolor2,
      customcolor2: customcolor2 ?? this.customcolor2,
      onCustomcolor2: onCustomcolor2 ?? this.onCustomcolor2,
      customcolor2Container: customcolor2Container ?? this.customcolor2Container,
      onCustomcolor2Container: onCustomcolor2Container ?? this.onCustomcolor2Container,
      sourceCustomcolor3: sourceCustomcolor3 ?? this.sourceCustomcolor3,
      customcolor3: customcolor3 ?? this.customcolor3,
      onCustomcolor3: onCustomcolor3 ?? this.onCustomcolor3,
      customcolor3Container: customcolor3Container ?? this.customcolor3Container,
      onCustomcolor3Container: onCustomcolor3Container ?? this.onCustomcolor3Container,
      sourceCustomcolor4: sourceCustomcolor4 ?? this.sourceCustomcolor4,
      customcolor4: customcolor4 ?? this.customcolor4,
      onCustomcolor4: onCustomcolor4 ?? this.onCustomcolor4,
      customcolor4Container: customcolor4Container ?? this.customcolor4Container,
      onCustomcolor4Container: onCustomcolor4Container ?? this.onCustomcolor4Container,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceCustomcolor1: Color.lerp(sourceCustomcolor1, other.sourceCustomcolor1, t),
      customcolor1: Color.lerp(customcolor1, other.customcolor1, t),
      onCustomcolor1: Color.lerp(onCustomcolor1, other.onCustomcolor1, t),
      customcolor1Container: Color.lerp(customcolor1Container, other.customcolor1Container, t),
      onCustomcolor1Container: Color.lerp(onCustomcolor1Container, other.onCustomcolor1Container, t),
      sourceCustomcolor2: Color.lerp(sourceCustomcolor2, other.sourceCustomcolor2, t),
      customcolor2: Color.lerp(customcolor2, other.customcolor2, t),
      onCustomcolor2: Color.lerp(onCustomcolor2, other.onCustomcolor2, t),
      customcolor2Container: Color.lerp(customcolor2Container, other.customcolor2Container, t),
      onCustomcolor2Container: Color.lerp(onCustomcolor2Container, other.onCustomcolor2Container, t),
      sourceCustomcolor3: Color.lerp(sourceCustomcolor3, other.sourceCustomcolor3, t),
      customcolor3: Color.lerp(customcolor3, other.customcolor3, t),
      onCustomcolor3: Color.lerp(onCustomcolor3, other.onCustomcolor3, t),
      customcolor3Container: Color.lerp(customcolor3Container, other.customcolor3Container, t),
      onCustomcolor3Container: Color.lerp(onCustomcolor3Container, other.onCustomcolor3Container, t),
      sourceCustomcolor4: Color.lerp(sourceCustomcolor4, other.sourceCustomcolor4, t),
      customcolor4: Color.lerp(customcolor4, other.customcolor4, t),
      onCustomcolor4: Color.lerp(onCustomcolor4, other.onCustomcolor4, t),
      customcolor4Container: Color.lerp(customcolor4Container, other.customcolor4Container, t),
      onCustomcolor4Container: Color.lerp(onCustomcolor4Container, other.onCustomcolor4Container, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
    );
  }
}