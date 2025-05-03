part of 'theme_cubit.dart';

enum AppThemeEnum { light, dark }

extension AppThemeBool on AppThemeEnum {
  bool get isLight => this == AppThemeEnum.light;
  bool get isDark => this == AppThemeEnum.dark;
}

class ThemeState extends Equatable {
  final AppThemeEnum theme;

  ThemeState({
    this.theme = ThemeMode.system == ThemeMode.light
        ? AppThemeEnum.light
        : AppThemeEnum.dark,
  });

  final appThemes = AppThemes();

  ThemeData get themeData {
    return theme == AppThemeEnum.light
        ? appThemes.lightTheme
        : appThemes.darkTheme;
  }

  factory ThemeState.fromMap(Map<String, dynamic> map) {
    return ThemeState(
      theme: AppThemeEnum.values.firstWhere(
        (e) => e.name == map['theme'],
        orElse: () => AppThemeEnum.light,
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'theme': theme.name,
    };
  }

  @override
  List<Object?> get props => [theme];
}
