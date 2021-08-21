// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return Project(
    id: json['id'] as String,
    source: _$enumDecode(_$ProjectSourceEnumMap, json['a']),
    remoteId: json['b'] as String,
    title: json['c'] as String,
    description: json['d'] as String,
    settings: (json['e'] as List<dynamic>)
        .map((e) => ProjectSettingsValue.fromJson(e as Map<String, dynamic>))
        .toList(),
    revisions: (json['f'] as List<dynamic>)
        .map((e) => Revision.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'id': instance.id,
      'a': _$ProjectSourceEnumMap[instance.source],
      'b': instance.remoteId,
      'c': instance.title,
      'd': instance.description,
      'e': instance.settings.map((e) => e.toJson()).toList(),
      'f': instance.revisions.map((e) => e.toJson()).toList(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ProjectSourceEnumMap = {
  ProjectSource.github_com: 'github_com',
  ProjectSource.pub_dev: 'pub_dev',
  ProjectSource.npmjs_com: 'npmjs_com',
};

ProjectSettingsValue _$ProjectSettingsValueFromJson(Map<String, dynamic> json) {
  return ProjectSettingsValue(
    key: json['a'] as String,
    value: json['b'],
  );
}

Map<String, dynamic> _$ProjectSettingsValueToJson(
    ProjectSettingsValue instance) {
  final val = <String, dynamic>{
    'a': instance.key,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('b', instance.value);
  return val;
}

Revision _$RevisionFromJson(Map<String, dynamic> json) {
  return Revision(
    content: json['a'] as String,
    numChanges: json['b'] as int,
    percentChanges: (json['c'] as num).toDouble(),
    date: DateTime.parse(json['d'] as String),
  );
}

Map<String, dynamic> _$RevisionToJson(Revision instance) => <String, dynamic>{
      'a': instance.content,
      'b': instance.numChanges,
      'c': instance.percentChanges,
      'd': instance.date.toIso8601String(),
    };
