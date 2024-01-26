import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'text_theme.dart';

abstract class PrimaryTheme {
  ThemeData get primary => ThemeData(
        // COLOR SCHEME
        splashColor: Colors.transparent,
        dividerColor: Colors.transparent,
        errorColor: const Color(0xFFFF0033),
      );
}

class TextForms extends TextTheme {
  TextStyle get textField => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 12,
      );
}

// todo: implement l/d versions
extension TextButtons on TextTheme {
  TextStyle get lightTextButton => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w300,
        fontSize: 20,
      );
  TextStyle get textButton => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      );
  TextStyle get smallTextButton => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
}

// todo: implement l/d versions
extension SpecialText on TextTheme {
  TextStyle get title => TextStyle(
        fontFamily: 'YesevaOne',
        fontSize: 25,
        fontWeight: FontWeight.normal,
        color: ConstantColors.titleColor,
      );
  TextStyle get chartTitle => const TextStyle();
  TextStyle get cardFooter => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

extension DialogText on TextTheme {
  TextStyle dialogTitle(BuildContext context) => TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.normal,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white.withOpacity(0.87)
            : Colors.black87,
      );
  TextStyle dialogBody(BuildContext context) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white.withOpacity(0.87)
            : Colors.black87,
      );
  TextStyle textDialogButton(BuildContext context) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white.withOpacity(0.87)
            : Colors.black87,
      );
}

class AppTheme extends PrimaryTheme {
  ThemeData get light => super.primary.copyWith(
        // COLOR SCHEME
        colorScheme: _lightColorScheme,
        scaffoldBackgroundColor: _lightColorScheme.background,
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.white,
        ),
        canvasColor: _lightColorScheme.primary,

        // APP BAR
        appBarTheme: _lightAppBar,

        // BOTTOM NAVIGATION BAR
        bottomNavigationBarTheme: _lightBottomNavigationBar,

        // PROGRESS INDICATOR
        progressIndicatorTheme: _lightProgressIndicator,

        // TEXT
        textTheme: AppTextTheme().lightTextTheme,
        textSelectionTheme: _lightTextSelection,
      );

  ThemeData get dark => super.primary.copyWith(
        // COLOR SCHEME
        colorScheme: _darkColorScheme,
        scaffoldBackgroundColor: _darkColorScheme.background,
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.grey[850],
        ),
        canvasColor: _darkColorScheme.primary,

        // APP BAR
        appBarTheme: _darkAppBar,

        // BOTTOM NAVIGATION BAR
        bottomNavigationBarTheme: _darkBottomNavigationBar,

        // PROGRESS INDICATOR
        progressIndicatorTheme: _darkProgressIndicator,

        // TEXT
        textTheme: AppTextTheme().darkTextTheme,
        textSelectionTheme: _darkTextSelection,
      );

  final _lightAppBar = AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarColor: LightColors.appBarBackground,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: const ColorScheme.light().background,
      systemNavigationBarContrastEnforced: false,
      systemNavigationBarDividerColor: const ColorScheme.light().background,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: false,
    ),
    backgroundColor: LightColors.appBarBackground,
    shadowColor: LightColors.appBarShadow,
    elevation: baseAppBarTheme.elevation,
    centerTitle: baseAppBarTheme.centerTitle,
    actionsIconTheme: IconThemeData(color: LightColors.appBarActions),
    iconTheme: IconThemeData(color: LightColors.appBarIcons),
  );

  final _darkAppBar = AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: DarkColors.appBarBackground,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: const ColorScheme.dark().background,
      systemNavigationBarContrastEnforced: false,
      systemNavigationBarDividerColor: const ColorScheme.dark().background,
      systemNavigationBarIconBrightness: Brightness.light,
      systemStatusBarContrastEnforced: false,
    ),
    backgroundColor: DarkColors.appBarBackground,
    shadowColor: DarkColors.appBarShadow,
    elevation: baseAppBarTheme.elevation,
    centerTitle: baseAppBarTheme.centerTitle,
    actionsIconTheme: IconThemeData(color: LightColors.appBarActions),
    iconTheme: IconThemeData(color: LightColors.appBarIcons),
  );

  final _lightBottomNavigationBar = BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent,
    unselectedItemColor: Colors.grey[500],
    selectedItemColor: const Color(0xFFF3BA52),
    showUnselectedLabels: false,
    showSelectedLabels: false,
    elevation: 0,
  );

  final _darkBottomNavigationBar = BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent,
    unselectedItemColor: Colors.grey[600],
    selectedItemColor: const Color(0xFFF3BA52),
    showUnselectedLabels: false,
    showSelectedLabels: false,
    elevation: 0,
  );

  final _lightProgressIndicator = ProgressIndicatorThemeData(
    circularTrackColor: Colors.grey,
    color: ConstantColors.titleColor,
    linearMinHeight: 4,
    linearTrackColor: ConstantColors.titleColor,
    refreshBackgroundColor: LightColors.appBarBackground,
  );

  final _darkProgressIndicator = ProgressIndicatorThemeData(
    circularTrackColor: Colors.grey,
    color: ConstantColors.titleColor,
    linearMinHeight: 4,
    linearTrackColor: ConstantColors.titleColor,
    refreshBackgroundColor: LightColors.appBarBackground,
  );

  ColorScheme get _lightColorScheme => ColorScheme(
        brightness: Brightness.light,
        primary: Colors.white,
        onPrimary: Colors.grey,
        secondary: ConstantColors.titleColor,
        onSecondary: Colors.white,
        error: super.primary.errorColor,
        onError: Colors.white,
        background: Colors.white,
        onBackground: Colors.grey[850]!,
        surface: ConstantColors.titleColor,
        onSurface: Colors.black,
      );

  ColorScheme get _darkColorScheme => ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.grey[800]!,
        onPrimary: Colors.grey,
        secondary: ConstantColors.titleColor,
        onSecondary: const Color.fromRGBO(66, 66, 66, 1),
        error: super.primary.errorColor,
        onError: Colors.grey,
        background: Colors.grey[900]!,
        onBackground: Colors.white,
        surface: ConstantColors.titleColor,
        onSurface: Colors.black,
      );

  TextSelectionThemeData get _lightTextSelection => TextSelectionThemeData(
        cursorColor: Colors.black,
        selectionColor: Colors.blue.withOpacity(0.5),
        selectionHandleColor: ConstantColors.titleColor,
      );

  TextSelectionThemeData get _darkTextSelection => TextSelectionThemeData(
        cursorColor: Colors.white,
        selectionColor: Colors.blue.withOpacity(0.5),
        selectionHandleColor: ConstantColors.titleColor,
      );
}

extension TileColors on ColorScheme {
  Color get tileEnabled => ConstantColors.tileEnabled;
  Color get tileDisabled => ConstantColors.tileDisabled;
}

extension LargeButtonColors on ColorScheme {
  Color get largeButtonLight => Colors.grey[300] ?? Colors.grey;
  Color get largeButtonDark => Colors.grey[700] ?? Colors.grey;
}

@immutable
class ConstantColors {
  static Color get titleColor => const Color(0xFFF3BA52);
  static Color get tileDisabled => const Color(0xFFC2C2C2);
  static Color get tileEnabled => titleColor;
}

@immutable
class LightColors {
  static Color get appBarBackground => const Color(0xFF363636);
  static Color get appBarShadow => Colors.black;
  static Color get appBarIcons => Colors.white;
  static Color get appBarActions => Colors.white;
}

@immutable
class DarkColors {
  static Color get appBarBackground => const Color(0xFF363636);
  static Color get appBarShadow => Colors.grey[700]!;
  static Color get appBarIcons => Colors.white;
  static Color get appBarActions => Colors.white;
}

AppBarTheme get baseAppBarTheme => const AppBarTheme(
      elevation: 15,
      centerTitle: true,
    );
