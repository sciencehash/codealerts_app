import 'dart:async';

import 'package:hive/hive.dart';
import 'package:codealerts_app/app/data/models/settings_value.dart';
import 'package:codealerts_app/app/data/services/settings_value_service.dart';

class SettingsValueHiveProvider extends SettingsValueService {
  // Hive box instance
  late Box _hiveBox;

  Future<void> initProvider() async {
    // Get Hive box instance
    _hiveBox = Hive.box('settings');
  }

  ///
  Future<SettingsValue?> byId(String id) async {
    final boxValue = _hiveBox.get(id);
    return boxValue != null
        ? SettingsValue.fromHiveEntry(
            id,
            Map<String, dynamic>.from(boxValue),
          )
        : null;
  }

  ///
  Future<List<SettingsValue>> all() async {
    List<SettingsValue> values = [];
    final keys = List<String>.from(_hiveBox.keys);
    for (String key in keys) {
      var value = await _hiveBox.get(key);
      values.add(
        SettingsValue.fromHiveEntry(
          key.toString(),
          Map<String, dynamic>.from(value),
        ),
      );
    }
    return values;
  }

  ///
  Future<void> add(SettingsValue value) async {
    await _hiveBox.put(value.key, value.toHiveEntry());
  }

  ///
  Future<void> update(SettingsValue value) async {
    await _hiveBox.put(value.key, value.toHiveEntry());
  }

  ///
  Future<void> removeById(String id) async {
    await _hiveBox.delete(id);
  }
}
