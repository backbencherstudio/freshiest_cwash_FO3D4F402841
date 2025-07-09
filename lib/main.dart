import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Set device orientation to portrait
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await ScreenUtil.ensureScreenSize();
  runApp(ProviderScope(child: App()));

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
      systemNavigationBarColor: Colors.transparent, // Transparent nav bar
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}
