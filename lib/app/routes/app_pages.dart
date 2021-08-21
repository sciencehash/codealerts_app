import 'package:get/get.dart';

import 'package:codealerts_app/app/modules/add/bindings/add_binding.dart';
import 'package:codealerts_app/app/modules/add/views/add_view.dart';
import 'package:codealerts_app/app/modules/home/bindings/home_binding.dart';
import 'package:codealerts_app/app/modules/home/views/home_view.dart';
import 'package:codealerts_app/app/modules/not_found/bindings/not_found_binding.dart';
import 'package:codealerts_app/app/modules/not_found/views/not_found_view.dart';
import 'package:codealerts_app/app/modules/notifications/bindings/notifications_binding.dart';
import 'package:codealerts_app/app/modules/notifications/views/notifications_view.dart';
import 'package:codealerts_app/app/modules/settings/bindings/settings_binding.dart';
import 'package:codealerts_app/app/modules/settings/views/settings_view.dart';
import 'package:codealerts_app/app/modules/viewer/bindings/viewer_binding.dart';
import 'package:codealerts_app/app/modules/viewer/views/viewer_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD,
      page: () => AddView(),
      binding: AddBinding(),
    ),
    GetPage(
      name: _Paths.VIEWER,
      page: () => ViewerView(),
      binding: ViewerBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.NOT_FOUND,
      page: () => NotFoundView(),
      binding: NotFoundBinding(),
    ),
  ];
}
