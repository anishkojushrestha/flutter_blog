import 'package:blog/config/themes/app_themes.dart';
import 'package:blog/features/blog/presentation/router/router_import.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      routerConfig: _appRouter.config(),
      //home: const MyHomePage(title: MyStrings.AppName),
    );
  }
}
