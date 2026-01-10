import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xfff57921);
  static const Color flotingSideActionButtonColor = Color.fromARGB(255, 59, 61, 96);
  static const Color lBackgroundColor = Color.fromARGB(255, 251, 250, 239);

  static const Color red = Color.fromARGB(255, 251, 65, 52);

  static Color green = Colors.green.shade500;
  static Color blue = Colors.blue.shade500;

  static final Color black3 = const Color(0xFF252525); // 900

  static final Color cream = const Color(0xFFFFFDD0);

  final Color darkBlueGreyBG = const Color(0xff33354b);
  final Color lightBlueGreyBG = const Color(0xFFE5E5ED);

  static final Color blue700 = const Color(0xff0a3161);

  static final Color darkBlueGrey = const Color(0xFF171B26);
  static final Color btnDarkBlue = const Color(0xFF282E41);

  static final Color surfaceDark = const Color(0xFF202334);

  static final Color textFieldDark = Color(0xff8f9099);
  static final Color textFieldLight = Color(0xffd1d2d8);
}

abstract class IColors {
  AppColors get _colors;

  Color? scaffoldBackgroundColor;
  Color? appBarColor;
  Color? primaryColor;

  Brightness? brightness;

  ColorScheme? colorScheme;
}

// class LightColors implements IColors {
//   @override
//   final AppColors _colors = AppColors();

//   @override
//   ColorScheme? colorScheme;

//   @override
//   Color? appBarColor;

//   @override
//   Color? scaffoldBackgroundColor;

//   @override
//   Brightness? brightness;

//   @override
//   Color? primaryColor;

//   LightColors() {
//     appBarColor = _colors.white;
//     scaffoldBackgroundColor = _colors.white;
//     primaryColor = _colors.primary;
//     colorScheme = ColorScheme(
//       brightness: Brightness.light,
//       primary: _colors.primary,
//       //to appbar
//       onPrimary: _colors.white1,
//       //to text on appbar
//       primaryContainer: _colors.white2,
//       // to other text on appbar,action icon
//       secondary: _colors.secondary,
//       secondaryContainer: _colors.primary1,
//       //to fab
//       onSecondary: _colors.white1,
//       error: _colors.black,
//       onError: _colors.white1,
//       onSecondaryContainer: _colors.lightGreen, //landing image
//       surface: _colors.teaGreen,
//       onSurface: _colors.dimGray,
//       surfaceContainerHighest: _colors.timeBackgroundColor,
//       onSurfaceVariant: _colors.blackLight,
//       onInverseSurface: _colors.grey,
//       onTertiary: _colors.checkMarkBlue,
//       onTertiaryContainer: _colors.onyx,
//       onPrimaryContainer: _colors.round,
//     );
//     brightness = Brightness.light;
//   }
// }
