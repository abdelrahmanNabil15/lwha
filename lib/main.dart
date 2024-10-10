import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lwha/config/route/routes.dart';
import 'package:lwha/config/theme/app_theme.dart';
import 'package:lwha/config/theme/cubit/theme_cubit.dart';

import 'package:lwha/core/di/dependency_injection.dart';

import 'config/route/app_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ThemeCubit>()..getCurrentTheme(),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeCubit, ThemeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          initialRoute: Routes.intiRoutes,
          onGenerateRoute: AppRoutes.onGenerateRoute,
          home: const HomePage(),
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          themeMode: state.themeMode,
          darkTheme: AppTheme.darkTheme,
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Switching Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'weclome',
              style: Theme.of(context).textTheme.bodyLarge,
              // Depending on the current theme, the text is also rendered properly
              // If the theme is dark, text is white in color else black
            ),
            const SizedBox(height: 10),
            Text(
              'abdelrahman',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 10),
            Text(
              'nabil',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ThemeCubit>().switchTheme(),
        tooltip: 'Switch Theme',
        child: context.read<ThemeCubit>().state.themeMode == ThemeMode.light
            ? const Icon(Icons.dark_mode)
            : const Icon(Icons.light_mode),
      ),
    );
  }
}
