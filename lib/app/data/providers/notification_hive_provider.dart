import 'dart:async';

import 'package:hive/hive.dart';
import 'package:codealerts_app/app/data/models/notification.dart';
import 'package:codealerts_app/app/data/services/notification_service.dart';

class NotificationHiveProvider extends NotificationService {
  // Hive box instance
  late Box _hiveBox;

  Future<void> initProvider() async {
    // Get Hive box instance
    _hiveBox = Hive.box('notifications');
  }

  ///
  Future<Notification?> byId(String id) async {
    final boxValue = _hiveBox.get(int.parse(id));
    return boxValue != null
        ? Notification.fromHiveEntry(
            id,
            Map<String, dynamic>.from(boxValue),
          )
        : null;
  }

  ///
  Future<List<Notification>> all() async {
    List<Notification> notifications = [];
    final keys = List<String>.from(_hiveBox.keys);
    for (String key in keys) {
      var value = await _hiveBox.get(key);
      notifications.add(
        Notification.fromHiveEntry(
          key.toString(),
          Map<String, dynamic>.from(value),
        ),
      );
    }
    return notifications;
  }

  ///
  Future<String> add(Notification notification) async {
    final int newId = await _hiveBox.add(notification.toHiveEntry());
    return newId.toString();
  }

  ///
  Future<void> update(Notification notification) async {
    await _hiveBox.put(int.parse(notification.id), notification.toHiveEntry());
  }

  ///
  Future<void> removeById(String id) async {
    await _hiveBox.delete(int.parse(id));
  }
}
