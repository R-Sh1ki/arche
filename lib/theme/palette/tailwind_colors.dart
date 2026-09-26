import 'dart:ui';

final class TailwindColorScale {
  const TailwindColorScale({
    required this.shade50,
    required this.shade100,
    required this.shade200,
    required this.shade300,
    required this.shade400,
    required this.shade500,
    required this.shade600,
    required this.shade700,
    required this.shade800,
    required this.shade900,
    required this.shade950,
  });

  final Color shade50;
  final Color shade100;
  final Color shade200;
  final Color shade300;
  final Color shade400;
  final Color shade500;
  final Color shade600;
  final Color shade700;
  final Color shade800;
  final Color shade900;
  final Color shade950;

  Color operator [](int shade) => switch (shade) {
    50 => shade50,
    100 => shade100,
    200 => shade200,
    300 => shade300,
    400 => shade400,
    500 => shade500,
    600 => shade600,
    700 => shade700,
    800 => shade800,
    900 => shade900,
    950 => shade950,
    _ => throw ArgumentError.value(
      shade,
      'shade',
      'Tailwind shade must be 50, 100, ..., 900, or 950.',
    ),
  };
}

abstract final class TailwindColors {
  static const transparent = Color(0x00000000);
  static const black = Color(0xFF000000);
  static const white = Color(0xFFFFFFFF);

  // ---------------------------------------------------------------------------
  // Neutral palettes
  // ---------------------------------------------------------------------------

  static const slate = TailwindColorScale(
    shade50: Color(0xFFF8FAFC),
    shade100: Color(0xFFF1F5F9),
    shade200: Color(0xFFE2E8F0),
    shade300: Color(0xFFCAD5E2),
    shade400: Color(0xFF90A1B9),
    shade500: Color(0xFF62748E),
    shade600: Color(0xFF45556C),
    shade700: Color(0xFF314158),
    shade800: Color(0xFF1D293D),
    shade900: Color(0xFF0F172B),
    shade950: Color(0xFF020618),
  );

  static const gray = TailwindColorScale(
    shade50: Color(0xFFF9FAFB),
    shade100: Color(0xFFF3F4F6),
    shade200: Color(0xFFE5E7EB),
    shade300: Color(0xFFD1D5DC),
    shade400: Color(0xFF99A1AF),
    shade500: Color(0xFF6A7282),
    shade600: Color(0xFF4A5565),
    shade700: Color(0xFF364153),
    shade800: Color(0xFF1E2939),
    shade900: Color(0xFF101828),
    shade950: Color(0xFF030712),
  );

  static const zinc = TailwindColorScale(
    shade50: Color(0xFFFAFAFA),
    shade100: Color(0xFFF4F4F5),
    shade200: Color(0xFFE4E4E7),
    shade300: Color(0xFFD4D4D8),
    shade400: Color(0xFF9F9FA9),
    shade500: Color(0xFF71717B),
    shade600: Color(0xFF52525C),
    shade700: Color(0xFF3F3F46),
    shade800: Color(0xFF27272A),
    shade900: Color(0xFF18181B),
    shade950: Color(0xFF09090B),
  );

  static const neutral = TailwindColorScale(
    shade50: Color(0xFFFAFAFA),
    shade100: Color(0xFFF5F5F5),
    shade200: Color(0xFFE5E5E5),
    shade300: Color(0xFFD4D4D4),
    shade400: Color(0xFFA1A1A1),
    shade500: Color(0xFF737373),
    shade600: Color(0xFF525252),
    shade700: Color(0xFF404040),
    shade800: Color(0xFF262626),
    shade900: Color(0xFF171717),
    shade950: Color(0xFF0A0A0A),
  );

  static const stone = TailwindColorScale(
    shade50: Color(0xFFFAFAF9),
    shade100: Color(0xFFF5F5F4),
    shade200: Color(0xFFE7E5E4),
    shade300: Color(0xFFD6D3D1),
    shade400: Color(0xFFA6A09B),
    shade500: Color(0xFF79716B),
    shade600: Color(0xFF57534D),
    shade700: Color(0xFF44403B),
    shade800: Color(0xFF292524),
    shade900: Color(0xFF1C1917),
    shade950: Color(0xFF0C0A09),
  );

  static const mauve = TailwindColorScale(
    shade50: Color(0xFFFAFAFA),
    shade100: Color(0xFFF3F1F3),
    shade200: Color(0xFFE7E4E7),
    shade300: Color(0xFFD7D0D7),
    shade400: Color(0xFFA89EA9),
    shade500: Color(0xFF79697B),
    shade600: Color(0xFF594C5B),
    shade700: Color(0xFF463947),
    shade800: Color(0xFF2A212C),
    shade900: Color(0xFF1D161E),
    shade950: Color(0xFF0C090C),
  );

  static const olive = TailwindColorScale(
    shade50: Color(0xFFFBFBF9),
    shade100: Color(0xFFF4F4F0),
    shade200: Color(0xFFE8E8E3),
    shade300: Color(0xFFD8D8D0),
    shade400: Color(0xFFABAB9C),
    shade500: Color(0xFF7C7C67),
    shade600: Color(0xFF5B5B4B),
    shade700: Color(0xFF474739),
    shade800: Color(0xFF2B2B22),
    shade900: Color(0xFF1D1D16),
    shade950: Color(0xFF0C0C09),
  );

  static const mist = TailwindColorScale(
    shade50: Color(0xFFF9FBFB),
    shade100: Color(0xFFF1F3F3),
    shade200: Color(0xFFE3E7E8),
    shade300: Color(0xFFD0D6D8),
    shade400: Color(0xFF9CA8AB),
    shade500: Color(0xFF67787C),
    shade600: Color(0xFF4B585B),
    shade700: Color(0xFF394447),
    shade800: Color(0xFF22292B),
    shade900: Color(0xFF161B1D),
    shade950: Color(0xFF090B0C),
  );

  static const taupe = TailwindColorScale(
    shade50: Color(0xFFFBFAF9),
    shade100: Color(0xFFF3F1F1),
    shade200: Color(0xFFE8E4E3),
    shade300: Color(0xFFD8D2D0),
    shade400: Color(0xFFABA09C),
    shade500: Color(0xFF7C6D67),
    shade600: Color(0xFF5B4F4B),
    shade700: Color(0xFF473C39),
    shade800: Color(0xFF2B2422),
    shade900: Color(0xFF1D1816),
    shade950: Color(0xFF0C0A09),
  );

  static const red = TailwindColorScale(
    shade50: Color(0xFFFEF2F2),
    shade100: Color(0xFFFFE2E2),
    shade200: Color(0xFFFFC9C9),
    shade300: Color(0xFFFFA2A2),
    shade400: Color(0xFFFF6467),
    shade500: Color(0xFFFB2C36),
    shade600: Color(0xFFE7000B),
    shade700: Color(0xFFC10007),
    shade800: Color(0xFF9F0712),
    shade900: Color(0xFF82181A),
    shade950: Color(0xFF460809),
  );

  static const orange = TailwindColorScale(
    shade50: Color(0xFFFFF7ED),
    shade100: Color(0xFFFFEDD4),
    shade200: Color(0xFFFFD6A7),
    shade300: Color(0xFFFFB86A),
    shade400: Color(0xFFFF8904),
    shade500: Color(0xFFFF6900),
    shade600: Color(0xFFF54900),
    shade700: Color(0xFFCA3500),
    shade800: Color(0xFF9F2D00),
    shade900: Color(0xFF7E2A0C),
    shade950: Color(0xFF441306),
  );

  static const amber = TailwindColorScale(
    shade50: Color(0xFFFFFBEB),
    shade100: Color(0xFFFEF3C6),
    shade200: Color(0xFFFEE685),
    shade300: Color(0xFFFFD230),
    shade400: Color(0xFFFFB900),
    shade500: Color(0xFFFE9A00),
    shade600: Color(0xFFE17100),
    shade700: Color(0xFFBB4D00),
    shade800: Color(0xFF973C00),
    shade900: Color(0xFF7B3306),
    shade950: Color(0xFF461901),
  );

  static const yellow = TailwindColorScale(
    shade50: Color(0xFFFEFCE8),
    shade100: Color(0xFFFEF9C2),
    shade200: Color(0xFFFFF085),
    shade300: Color(0xFFFFDF20),
    shade400: Color(0xFFFDC700),
    shade500: Color(0xFFF0B100),
    shade600: Color(0xFFD08700),
    shade700: Color(0xFFA65F00),
    shade800: Color(0xFF894B00),
    shade900: Color(0xFF733E0A),
    shade950: Color(0xFF432004),
  );

  static const lime = TailwindColorScale(
    shade50: Color(0xFFF7FEE7),
    shade100: Color(0xFFECFCCA),
    shade200: Color(0xFFD8F999),
    shade300: Color(0xFFBBF451),
    shade400: Color(0xFF9AE600),
    shade500: Color(0xFF7CCF00),
    shade600: Color(0xFF5EA500),
    shade700: Color(0xFF497D00),
    shade800: Color(0xFF3C6300),
    shade900: Color(0xFF35530E),
    shade950: Color(0xFF192E03),
  );

  static const green = TailwindColorScale(
    shade50: Color(0xFFF0FDF4),
    shade100: Color(0xFFDCFCE7),
    shade200: Color(0xFFB9F8CF),
    shade300: Color(0xFF7BF1A8),
    shade400: Color(0xFF05DF72),
    shade500: Color(0xFF00C950),
    shade600: Color(0xFF00A63E),
    shade700: Color(0xFF008236),
    shade800: Color(0xFF016630),
    shade900: Color(0xFF0D542B),
    shade950: Color(0xFF032E15),
  );

  static const emerald = TailwindColorScale(
    shade50: Color(0xFFECFDF5),
    shade100: Color(0xFFD0FAE5),
    shade200: Color(0xFFA4F4CF),
    shade300: Color(0xFF5EE9B5),
    shade400: Color(0xFF00D492),
    shade500: Color(0xFF00BC7D),
    shade600: Color(0xFF009966),
    shade700: Color(0xFF007A55),
    shade800: Color(0xFF006045),
    shade900: Color(0xFF004F3B),
    shade950: Color(0xFF002C22),
  );

  static const teal = TailwindColorScale(
    shade50: Color(0xFFF0FDFA),
    shade100: Color(0xFFCBFBF1),
    shade200: Color(0xFF96F7E4),
    shade300: Color(0xFF46ECD5),
    shade400: Color(0xFF00D5BE),
    shade500: Color(0xFF00BBA7),
    shade600: Color(0xFF009689),
    shade700: Color(0xFF00786F),
    shade800: Color(0xFF005F5A),
    shade900: Color(0xFF0B4F4A),
    shade950: Color(0xFF022F2E),
  );

  static const cyan = TailwindColorScale(
    shade50: Color(0xFFECFEFF),
    shade100: Color(0xFFCEFAFE),
    shade200: Color(0xFFA2F4FD),
    shade300: Color(0xFF53EAFD),
    shade400: Color(0xFF00D3F2),
    shade500: Color(0xFF00B8DB),
    shade600: Color(0xFF0092B8),
    shade700: Color(0xFF007595),
    shade800: Color(0xFF005F78),
    shade900: Color(0xFF104E64),
    shade950: Color(0xFF053345),
  );

  static const sky = TailwindColorScale(
    shade50: Color(0xFFF0F9FF),
    shade100: Color(0xFFDFF2FE),
    shade200: Color(0xFFB8E6FE),
    shade300: Color(0xFF74D4FF),
    shade400: Color(0xFF00BCFF),
    shade500: Color(0xFF00A6F4),
    shade600: Color(0xFF0084D1),
    shade700: Color(0xFF0069A8),
    shade800: Color(0xFF00598A),
    shade900: Color(0xFF024A70),
    shade950: Color(0xFF052F4A),
  );

  static const blue = TailwindColorScale(
    shade50: Color(0xFFEFF6FF),
    shade100: Color(0xFFDBEAFE),
    shade200: Color(0xFFBEDBFF),
    shade300: Color(0xFF8EC5FF),
    shade400: Color(0xFF51A2FF),
    shade500: Color(0xFF2B7FFF),
    shade600: Color(0xFF155DFC),
    shade700: Color(0xFF1447E6),
    shade800: Color(0xFF193CB8),
    shade900: Color(0xFF1C398E),
    shade950: Color(0xFF162456),
  );

  static const indigo = TailwindColorScale(
    shade50: Color(0xFFEEF2FF),
    shade100: Color(0xFFE0E7FF),
    shade200: Color(0xFFC6D2FF),
    shade300: Color(0xFFA3B3FF),
    shade400: Color(0xFF7C86FF),
    shade500: Color(0xFF615FFF),
    shade600: Color(0xFF4F39F6),
    shade700: Color(0xFF432DD7),
    shade800: Color(0xFF372AAC),
    shade900: Color(0xFF312C85),
    shade950: Color(0xFF1E1A4D),
  );

  static const violet = TailwindColorScale(
    shade50: Color(0xFFF5F3FF),
    shade100: Color(0xFFEDE9FE),
    shade200: Color(0xFFDDD6FF),
    shade300: Color(0xFFC4B4FF),
    shade400: Color(0xFFA684FF),
    shade500: Color(0xFF8E51FF),
    shade600: Color(0xFF7F22FE),
    shade700: Color(0xFF7008E7),
    shade800: Color(0xFF5D0EC0),
    shade900: Color(0xFF4D179A),
    shade950: Color(0xFF2F0D68),
  );

  static const purple = TailwindColorScale(
    shade50: Color(0xFFFAF5FF),
    shade100: Color(0xFFF3E8FF),
    shade200: Color(0xFFE9D4FF),
    shade300: Color(0xFFDAB2FF),
    shade400: Color(0xFFC27AFF),
    shade500: Color(0xFFAD46FF),
    shade600: Color(0xFF9810FA),
    shade700: Color(0xFF8200DB),
    shade800: Color(0xFF6E11B0),
    shade900: Color(0xFF59168B),
    shade950: Color(0xFF3C0366),
  );

  static const fuchsia = TailwindColorScale(
    shade50: Color(0xFFFDF4FF),
    shade100: Color(0xFFFAE8FF),
    shade200: Color(0xFFF6CFFF),
    shade300: Color(0xFFF4A8FF),
    shade400: Color(0xFFED6AFF),
    shade500: Color(0xFFE12AFB),
    shade600: Color(0xFFC800DE),
    shade700: Color(0xFFA800B7),
    shade800: Color(0xFF8A0194),
    shade900: Color(0xFF721378),
    shade950: Color(0xFF4B004F),
  );

  static const pink = TailwindColorScale(
    shade50: Color(0xFFFDF2F8),
    shade100: Color(0xFFFCE7F3),
    shade200: Color(0xFFFCCEE8),
    shade300: Color(0xFFFDA5D5),
    shade400: Color(0xFFFB64B6),
    shade500: Color(0xFFF6339A),
    shade600: Color(0xFFE60076),
    shade700: Color(0xFFC6005C),
    shade800: Color(0xFFA3004C),
    shade900: Color(0xFF861043),
    shade950: Color(0xFF510424),
  );

  static const rose = TailwindColorScale(
    shade50: Color(0xFFFFF1F2),
    shade100: Color(0xFFFFE4E6),
    shade200: Color(0xFFFFCCD3),
    shade300: Color(0xFFFFA1AD),
    shade400: Color(0xFFFF637E),
    shade500: Color(0xFFFF2056),
    shade600: Color(0xFFEC003F),
    shade700: Color(0xFFC70036),
    shade800: Color(0xFFA50036),
    shade900: Color(0xFF8B0836),
    shade950: Color(0xFF4D0218),
  );
}
