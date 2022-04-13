import 'package:devanthojb/app/bindings/home_binding.dart';
import 'package:devanthojb/app/ui/pages/home_page/home_page.dart';
import 'package:devanthojb/app/ui/theme/app_theme.dart';
import 'package:devanthojb/app/ui/utils/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final UserPreferences prefs = UserPreferences();
  await prefs.initPrefs();
  runApp(const MyApp());
}

final UserPreferences prefs = UserPreferences();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anthony Jara Dev',
      home: const HomePage(),
      initialBinding: HomeBinding(),
      theme: AppTheme.themeData,
    );
  }
}
