import 'package:drop_down_search/config/theme/fonts.dart';
import 'package:drop_down_search/config/theme/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../font_manager.dart';
import '../value_manager.dart';
import 'app_colors.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: AppColors.lBackgroundColor,
    primary: AppColors.primaryColor,
    secondary: Colors.grey.shade700,
    onPrimary: AppColors.cream,
    primaryContainer: Colors.white,
    secondaryContainer: AppColors().lightBlueGreyBG,
    tertiaryContainer: Colors.black,
  ),
  dividerColor: const Color.fromARGB(255, 219, 219, 219).withValues(alpha: .7),
  textTheme: const TextTheme().copyWith(
    bodyMedium: const TextStyle(color: Colors.black),
    displayMedium: const TextStyle(color: Colors.black),
  ),
  fontFamily: Fonts.poppins,
  inputDecorationTheme: InputDecorationTheme().copyWith(
    hintStyle: TextStyle(color: Colors.black45, fontWeight: FontWeightManager.medium),
    fillColor: AppColors.textFieldLight,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: BorderSide(width: 0, style: BorderStyle.none),
    ),
    errorMaxLines: 2,
    isDense: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
  ),
  cardTheme: CardThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: const BorderSide(color: Color.fromARGB(255, 233, 233, 233)),
    ),
  ),
  iconTheme: IconThemeData(color: AppColors.primaryColor),
  cardColor: Colors.white,
  dialogTheme: DialogThemeData().copyWith(backgroundColor: Colors.white),
  chipTheme: ChipThemeData().copyWith(
    selectedColor: AppColors.blue700,
    secondaryLabelStyle: TextStyle(color: Colors.white),
    labelStyle: TextStyle(color: Colors.black54),
    checkmarkColor: Colors.white,
  ),

  dropdownMenuTheme: DropdownMenuThemeData().copyWith(
    textStyle: TextStyle(color: Colors.black54),
    inputDecorationTheme: InputDecorationTheme(hintStyle: TextStyle(color: Colors.black45)),
  ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: AppColors.surfaceDark,
    primary: AppColors.primaryColor,
    secondary: AppColors.cream,
    onPrimary: AppColors.cream,
    primaryContainer: Colors.white.withValues(alpha: .02),
    secondaryContainer: AppColors().darkBlueGreyBG,
    tertiaryContainer: AppColors.cream,
  ),
  dividerColor: Color.fromARGB(255, 79, 79, 79),
  fontFamily: Fonts.poppins,
  textTheme: const TextTheme().copyWith(
    bodySmall: TextStyle(color: AppColors.cream),
    bodyMedium: TextStyle(color: AppColors.cream),
    displayMedium: TextStyle(color: AppColors.cream),
  ),
  cardTheme: CardThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: const BorderSide(color: Color.fromARGB(255, 99, 99, 99)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme().copyWith(
    hintStyle: TextStyle(color: AppColors.black3, fontWeight: FontWeightManager.medium),
    fillColor: AppColors.textFieldDark,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.0),
      borderSide: BorderSide(width: 0, style: BorderStyle.none),
    ),
    errorMaxLines: 2,
    isDense: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
  ),
  cardColor: AppColors.btnDarkBlue,
  dialogTheme: DialogThemeData().copyWith(backgroundColor: AppColors.surfaceDark),
  chipTheme: ChipThemeData().copyWith(
    selectedColor: AppColors.blue700,
    labelStyle: TextStyle(color: Colors.white),
    checkmarkColor: Colors.white,
  ),
  dropdownMenuTheme: DropdownMenuThemeData().copyWith(
    textStyle: TextStyle(color: Colors.white),
    inputDecorationTheme: InputDecorationTheme(hintStyle: TextStyle(color: Colors.white)),
  ),
);

ThemeData createTheme(IColors iColors) => ThemeData(
  scaffoldBackgroundColor: iColors.scaffoldBackgroundColor,
  primaryColor: iColors.primaryColor,
  colorScheme: iColors.colorScheme,
  brightness: iColors.brightness,
  textTheme: _textTheme(iColors),
  appBarTheme: _appBarTheme(iColors),
  popupMenuTheme: _popupMenuThemeData(iColors),
  tabBarTheme: tabBarTheme(),
  textButtonTheme: _textButtonThemeData(iColors),
  elevatedButtonTheme: _elevatedButtonThemeData(iColors),
  inputDecorationTheme: _inputDecorationTheme(iColors),
  dividerColor: iColors.colorScheme!.secondaryContainer,
  progressIndicatorTheme: ProgressIndicatorThemeData(color: iColors.primaryColor),
);

TextTheme _textTheme(IColors iColors) {
  return TextTheme(
    displayLarge: getSemiBoldStyle(color: iColors.colorScheme!.secondary, fontSize: FontSize.s20),
    //for appbar
    headlineLarge: getBoldStyle(color: iColors.colorScheme!.onPrimary, fontSize: 18),
    bodySmall: getRegularStyle(color: iColors.colorScheme!.primaryContainer, fontSize: 13),
    //for list tile title
    headlineMedium: getMediumStyle(
      //color: AppColors.textBlack,
      color: iColors.colorScheme!.onSurface,
      fontSize: FontSize.s17,
    ),
    labelLarge: getBoldStyle(color: iColors.colorScheme!.onPrimary, fontSize: 14),
    //for list tile subtitle
    bodyMedium: getMediumStyle(color: iColors.colorScheme!.onInverseSurface, fontSize: FontSize.s14),
    //for time card
    displaySmall: TextStyle(color: iColors.colorScheme!.onSurfaceVariant, fontSize: 16, fontWeight: FontWeight.w500),
    //////////////////////////////////////////////login
    titleLarge: getMediumStyle(color: iColors.colorScheme!.onSurface, fontSize: FontSize.s17),
    titleMedium: getMediumStyle(color: iColors.colorScheme!.onInverseSurface, fontSize: FontSize.s14),
    titleSmall: getSemiBoldStyle(
      //color: AppColors.blackLight,
      color: iColors.colorScheme!.onSurfaceVariant,
      fontSize: FontSize.s14,
    ),
  );
}

AppBarTheme _appBarTheme(IColors colors) {
  return AppBarTheme(
    backgroundColor: colors.colorScheme!.primary,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: colors.colorScheme!.primary, statusBarIconBrightness: Brightness.light),
    titleTextStyle: TextStyle(color: colors.colorScheme!.onPrimary, fontSize: AppSize.s20, fontWeight: FontWeightManager.semiBold),
    actionsIconTheme: IconThemeData(color: colors.colorScheme!.primaryContainer, size: FontSize.s26),
  );
}

TabBarThemeData tabBarTheme() {
  return const TabBarThemeData(
    labelStyle: TextStyle(fontSize: FontSize.s14, fontWeight: FontWeightManager.bold),
  );
}

TextButtonThemeData _textButtonThemeData(IColors colors) {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: TextStyle(color: colors.colorScheme!.secondary, fontWeight: FontWeightManager.medium),
    ),
  );
}

PopupMenuThemeData _popupMenuThemeData(IColors iColors) {
  return PopupMenuThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    textStyle: TextStyle(color: iColors.colorScheme!.onSurface, fontWeight: FontWeightManager.medium, fontSize: FontSize.s17),
  );
}

InputDecorationTheme _inputDecorationTheme(IColors iColors) {
  return InputDecorationTheme(
    hintStyle: TextStyle(color: iColors.colorScheme!.onInverseSurface),
    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: iColors.colorScheme!.secondary, width: 2)),
    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: iColors.colorScheme!.secondary, width: 2)),
  );
}

ElevatedButtonThemeData _elevatedButtonThemeData(IColors iColors) {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: iColors.colorScheme!.secondary,
      textStyle: TextStyle(color: iColors.colorScheme!.onSecondary, fontWeight: FontWeightManager.medium),
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s20, vertical: AppSize.s14),
    ),
  );
}
