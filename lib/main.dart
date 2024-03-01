import 'package:blog/config/themes/app_themes.dart';
import 'package:blog/features/blog/data/repositories/repository.dart';
import 'package:blog/features/blog/data/repositories/tags_repo.dart';
import 'package:blog/features/blog/presentation/router/router_import.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    RepositoryProvider(
      create: (context) => Repository(
        tagsRepo: TagsRepo(),
      ),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            routerConfig: _appRouter.config(),
            //home: const MyHomePage(title: MyStrings.AppName),
          );
        });
  }
}
