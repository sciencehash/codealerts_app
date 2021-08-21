// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return Notification(
    id: json['id'] as String,
    title: json['a'] as String,
    content: json['b'] as String,
    projectId: json['c'] as String,
    date: json['d'],
  );
}

Map<String, dynamic> _$NotificationToJson(Notification instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'a': instance.title,
    'b': instance.content,
    'c': instance.projectId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('d', instance.date);
  return val;
}
