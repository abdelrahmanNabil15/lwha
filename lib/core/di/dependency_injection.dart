
import 'package:get_it/get_it.dart';
import 'package:lwha/config/theme/cubit/theme_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../config/theme/theme_repository.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  getIt.registerFactory(() => ThemeCubit(  getIt(),   ));
  getIt.registerFactory<ThemePersistence>(() => ThemeRepository( sharedPreferences :getIt(),   ));
}