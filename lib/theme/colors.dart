part of 'theme.dart';

final FColors lightColors = FColors(
  brightness: .light,
  systemOverlayStyle: .dark,
  barrier: Color(0x33000000),
  background: Color(0xFFFFFFFF),
  foreground: Color(0xFF1F2328),
  primary: Color(0xFF0969DA),
  primaryForeground: Color(0xFFFFFFFF),
  secondary: Color(0xFFDDF4FF),
  secondaryForeground: Color(0xFF0969DA),
  muted: Color(0xFFF6F8FA),
  mutedForeground: Color(0xFF59636E),
  destructive: Color(0xFFCF222E),
  destructiveForeground: Color(0xFFFFFFFF),
  error: Color(0xFFCF222E),
  errorForeground: Color(0xFFFFFFFF),
  card: Color(0xFFFFFFFF),
  border: Color(0xFFD1D9E0),
  extensions: [
    AppColors(
      success: TailwindColors.emerald.shade600,
      warning: TailwindColors.amber.shade600,
      info: TailwindColors.blue.shade600,
      accent: TailwindColors.violet.shade600,
    ),
  ],
);

final FColors darkColors = FColors(
  brightness: .dark,
  systemOverlayStyle: .light,
  barrier: Color(0x7A000000),
  background: Color(0xFF0D1117),
  foreground: Color(0xFFF0F6FC),
  primary: Color(0xFF1F6FEB),
  primaryForeground: Color(0xFFFFFFFF),
  secondary: Color(0xFF121D2F),
  secondaryForeground: Color(0xFF58A6FF),
  muted: Color(0xFF161B22),
  mutedForeground: Color(0xFF8B949E),
  destructive: Color(0xFFDA3633),
  destructiveForeground: Color(0xFFFFFFFF),
  error: Color(0xFFDA3633),
  errorForeground: Color(0xFFFFFFFF),
  card: Color(0xFF161B22),
  border: Color(0xFF30363D),
  extensions: [
    AppColors(
      success: TailwindColors.emerald.shade400,
      warning: TailwindColors.amber.shade400,
      info: TailwindColors.blue.shade400,
      accent: TailwindColors.violet.shade400,
    ),
  ],
);

/// Provides convenient access to theme extensions on [FColors].
///
/// ```dart
/// final accent = context.theme.colors.app.accent; ✅
///
/// // Alternatively, you can create a getter to access extension fields directly.
/// final accent = context.theme.colors.accent; ✅
///
/// final accent = context.theme.colors.extension<AppColors>().accent; ❌
/// ```
extension FColorsExtensions on FColors {
  AppColors get app => extension<AppColors>();
}

/// Custom color tokens unique to your app.
///
/// Add your fields below, then implement [copyWith], [lerp], [==], and [hashCode].
/// See https://api.flutter.dev/flutter/material/ThemeExtension-class.html.
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.success,
    required this.warning,
    required this.info,
    required this.accent,
  });

  final Color success;
  final Color warning;
  final Color info;
  final Color accent;

  @override
  AppColors copyWith({Color? success, Color? warning, Color? info, Color? accent}) {
    return AppColors(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      accent: accent ?? this.accent,
    );
  }

  @override
  AppColors lerp(covariant AppColors? other, double t) {
    if (other == null) {
      return this;
    }
    return AppColors(
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppColors &&
          success == other.success &&
          warning == other.warning &&
          info == other.info &&
          accent == other.accent;

  @override
  int get hashCode => Object.hash(success, warning, info, accent);
}
