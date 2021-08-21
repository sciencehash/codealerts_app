// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsValue _$SettingsValueFromJson(Map<String, dynamic> json) {
  return SettingsValue(
    key: json['key'] as String,
    value: json['a'],
  );
}

Map<String, dynamic> _$SettingsValueToJson(SettingsValue instance) {
  final val = <String, dynamic>{
    'key': instance.key,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('a', instance.value);
  return val;
}
