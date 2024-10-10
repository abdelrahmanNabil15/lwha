
abstract class ThemePersistence {
  Stream<CustomTheme> getTheme();
  Future<void> saveTheme(CustomTheme theme);
  void dispose();
}

enum CustomTheme { light, dark }

class ThemeRepository implements ThemePersistence {
  ThemeRepository(SharedPreferences sharedPreferences,) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  @override
  Future<Stream<CustomTheme>> getTheme() async {}

  @override
  Future<void> saveTheme(CustomTheme theme) async {}

  @override
  void dispose() {}
}

class SharedPreferences {
}
