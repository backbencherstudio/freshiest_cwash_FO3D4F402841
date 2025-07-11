import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshiest_cwash_app/src/core/routes/route_config.dart';
import 'package:freshiest_cwash_app/src/core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  static const double deviceWidth = 390.0;
  static const double deviceHeight = 840.0;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(deviceWidth, deviceHeight),
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Car Wash',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          routerConfig: RouteConfig().goRouter,
        );
      },
    );
  }
}
