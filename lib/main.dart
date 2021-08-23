import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'package:codealerts_app/app/core/services/translation_service.dart';
// import 'package:codealerts_app/app/core/themes/dark_theme.dart';
import 'package:codealerts_app/app/core/themes/default_theme.dart';
import 'package:codealerts_app/app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Hive.openBox('projects');
    await Hive.openBox('settings');
    await Hive.openBox('notifications');
  } else {
    // Directory appDocDir = await getApplicationDocumentsDirectory();
    Directory appDocDir = await getApplicationSupportDirectory();
    String appDocPath = appDocDir.path;

    await Hive.openBox('projects', path: appDocPath);
    await Hive.openBox('settings', path: appDocPath);
    await Hive.openBox('notifications', path: appDocPath);
  }

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Code Alerts",
      initialRoute: AppPages.INITIAL,
      unknownRoute: AppPages.routes.firstWhere(
        (p) => p.name == Routes.NOT_FOUND,
      ),
      theme: DefaultTheme.data,
      // darkTheme: DarkTheme.data,
      getPages: AppPages.routes,
      color: Colors.black,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
      debugShowCheckedModeBanner: false,
    );
  }
}
