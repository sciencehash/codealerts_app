import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'package:codealerts_app/app/core/services/translation_service.dart';
import 'package:codealerts_app/app/core/themes/dark_theme.dart';
import 'package:codealerts_app/app/core/themes/default_theme.dart';
import 'package:codealerts_app/app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

/// We are using a StatefulWidget such that we only create the [Future] once,
/// no matter how many times our widget rebuild.
/// If we used a [StatelessWidget], in the event where [App] is rebuilt, that
/// would re-initialize FlutterFire and make our application re-enter loading state,
/// which is undesired.
class App extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  Future<void> _initialization() async {
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
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return SomethingWentWrong();
        }

        return GetMaterialApp(
          title: "Code Alerts",
          initialRoute: AppPages.INITIAL,
          unknownRoute: AppPages.routes.firstWhere(
            (p) => p.name == Routes.NOT_FOUND,
          ),
          theme: DefaultTheme.data,
          darkTheme: DarkTheme.data,
          getPages: AppPages.routes,
          color: Colors.black,
          locale: TranslationService.locale,
          fallbackLocale: TranslationService.fallbackLocale,
          translations: TranslationService(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class SomethingWentWrong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'codealerts',
      home: Scaffold(
        body: Center(
          child: Text('Something Went Wrong'),
        ),
      ),
      theme: DefaultTheme.data,
      darkTheme: DarkTheme.data,
      debugShowCheckedModeBanner: false,
    );
  }
}
