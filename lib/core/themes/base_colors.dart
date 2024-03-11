part of '_themes.dart';

class BaseColors {
  static const int _primaryValue = 0xFF5038BC;
  static const int _secondaryValue = 0xFFE1E5FE;
  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFEAE7F7),
      100: Color(_secondaryValue),
      200: Color(0xFFA89CDE),
      300: Color(0xFF8574D0),
      400: Color(0xFF6A56C6),
      500: Color(_primaryValue),
      600: Color(0xFF4932B6),
      700: Color(0xFF402BAD),
      800: Color(0xFF3724A5),
      900: Color(0xFF271797),
    },
  );

  static const int _sprayValue = 0xFF64E6FB;
  static const MaterialColor lightBlue = MaterialColor(
    _sprayValue,
    <int, Color>{
      50: Color(0xFFECFCFF),
      100: Color(0xFFD1F8FE),
      200: Color(0xFFB2F3FD),
      300: Color(0xFF93EEFC),
      400: Color(0xFF7BEAFC),
      500: Color(_sprayValue),
      600: Color(0xFF5CE3FA),
      700: Color(0xFF52DFFA),
      800: Color(0xFF48DBF9),
      900: Color(0xFF36D5F8),
    },
  );

  static const int _alabasterPrimaryValue = 0xFFF8F8F8;
  static const MaterialColor alabaster = MaterialColor(
    _alabasterPrimaryValue,
    <int, Color>{
      50: Color(0xFFFEFEFE),
      100: Color(0xFFFDFDFD),
      200: Color(0xFFFCFCFC),
      300: Color(0xFFFAFAFA),
      400: Color(0xFFF9F9F9),
      500: Color(_alabasterPrimaryValue),
      600: Color(0xFFF7F7F7),
      700: Color(0xFFF6F6F6),
      800: Color(0xFFF5F5F5),
      900: Color(0xFFF3F3F3),
    },
  );

  static const int _yellowPrimaryValue = 0xFFFFD668;
  static const MaterialColor yellow = MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFFAED),
      100: Color(0xFFFFF3D2),
      200: Color(0xFFFFEBB4),
      300: Color(0xFFFFE295),
      400: Color(0xFFFFDC7F),
      500: Color(_yellowPrimaryValue),
      600: Color(0xFFFFD160),
      700: Color(0xFFFFCC55),
      800: Color(0xFFFFC64B),
      900: Color(0xFFFFBC3A),
    },
  );

  static const int _cinnabarPrimaryValue = 0xFFFEE2E2;
  static const MaterialColor cinnabar =
      MaterialColor(_cinnabarPrimaryValue, <int, Color>{
    50: Color(0xFFFDE6E6),
    100: Color(_cinnabarPrimaryValue),
    200: Color(0xFFF79798),
    300: Color(0xFFF36D6F),
    400: Color(0xFFF14D50),
    500: Color(0xFFEE2E31),
    600: Color(0xFFEC292C),
    700: Color(0xFFE92325),
    800: Color(0xFFE71D1F),
    900: Color(0xFFE21213),
  });

  static const int _magentaPrimaryValue = 0xFFC424A3;
  static const MaterialColor magenta = MaterialColor(
    _magentaPrimaryValue,
    <int, Color>{
      50: Color(0xFFF8E5F4),
      100: Color(0xFFEDBDE3),
      200: Color(0xFFE292D1),
      300: Color(0xFFD666BF),
      400: Color(0xFFCD45B1),
      500: Color(_magentaPrimaryValue),
      600: Color(0xFFBE209B),
      700: Color(0xFFB61B91),
      800: Color(0xFFAF1688),
      900: Color(0xFFA20D77),
    },
  );

  static const int _slatePrimaryValue = 0xFF333333;
  static const MaterialColor slate = MaterialColor(
    _slatePrimaryValue,
    <int, Color>{
      50: Color(0xFFE7E7E7),
      100: Color(0xFFC2C2C2),
      200: Color(0xFF999999),
      300: Color(0xFF707070),
      400: Color(0xFF525252),
      500: Color(_slatePrimaryValue),
      600: Color(0xFF2E2E2E),
      700: Color(0xFF272727),
      800: Color(0xFF202020),
      900: Color(0xFF141414),
    },
  );

  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
  static const Color lightGrey = Color(0xFF888888);

  static const Color success = Color(0xFF27AE60);
  static const Color warning = bikunRed;
  static const Color error = Color(0xFFEB5757);

  static const Color secondary = Color(_secondaryValue);

  static const Color scaffoldBacgorund = Color(0xFFF9F9FE);

  static const int _bikunBluePrimaryValue = 0xFF453F8C;
  static const MaterialColor bikunBlue = MaterialColor(
    _bikunBluePrimaryValue,
    <int, Color>{
      50: Color(0xFFE9E8F1),
      100: Color(0xFFC7C5DD),
      200: Color(0xFFA29FC6),
      300: Color(0xFF7D79AF),
      400: Color(0xFF615C9D),
      500: Color(_bikunBluePrimaryValue),
      600: Color(0xFF3E3984),
      700: Color(0xFF363179),
      800: Color(0xFF2E296F),
      900: Color(0xFF1F1B5C),
    },
  );

  static const int _bikunRedPrimaryValue = 0xFFD6003C;
  static const MaterialColor bikunRed =
      MaterialColor(_bikunRedPrimaryValue, <int, Color>{
    50: Color(0xFFFAE0E8),
    100: Color(0xFFF3B3C5),
    200: Color(0xFFEB809E),
    300: Color(0xFFE24D77),
    400: Color(0xFFDC2659),
    500: Color(_bikunRedPrimaryValue),
    600: Color(0xFFD10036),
    700: Color(0xFFCC002E),
    800: Color(0xFFC60027),
    900: Color(0xFFBC001A),
  });
}
