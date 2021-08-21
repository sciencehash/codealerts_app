import 'package:codealerts_app/app/data/models/settings_value.dart';

abstract class SettingsValueService {
  ///
  Future<void> initProvider();

  ///
  Future<SettingsValue?> byId(String id);

  ///
  Future<List<SettingsValue>> all();

  ///
  Future<void> add(SettingsValue value);

  ///
  Future<void> update(SettingsValue value);

  ///
  Future<void> removeById(String id);
}
