import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

enum ProjectSource {
  github_com,
  pub_dev,
  npmjs_com,
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
)
class Project extends Equatable {
  /// Document ID or Key on local storage
  final String id;

  @JsonKey(name: 'a')
  final ProjectSource source;

  @JsonKey(name: 'b')
  final String remoteId;

  @JsonKey(name: 'c')
  final String title;

  @JsonKey(name: 'd')
  final String description;

  @JsonKey(name: 'e')
  final List<ProjectSettingsValue> settings;

  @JsonKey(name: 'f')
  final List<Revision> revisions;

  Project({
    required this.id,
    required this.source,
    required this.remoteId,
    required this.title,
    required this.description,
    required this.settings,
    required this.revisions,
  });

  @override
  List<Object?> get props => [
        id,
        source,
        remoteId,
        title,
        description,
        settings,
        revisions,
      ];

  Project copyWith({
    String? id,
    ProjectSource? source,
    String? remoteId,
    String? title,
    String? description,
    List<ProjectSettingsValue>? settings,
    List<Revision>? revisions,
  }) {
    return Project(
      id: id ?? this.id,
      source: source ?? this.source,
      remoteId: remoteId ?? this.remoteId,
      title: title ?? this.title,
      description: description ?? this.description,
      settings: settings ?? this.settings,
      revisions: revisions ?? this.revisions,
    );
  }

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);

  //
  factory Project.fromHiveEntry(String entryId, Map value) {
    //
    var json = Map<String, dynamic>.from(
      value,
    );

    //
    json['id'] = entryId;

    //
    return _$ProjectFromJson(json);
  }

  Map<String, dynamic> toHiveEntry() => this.toJson()..remove('id');

  @override
  bool get stringify => true;
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
)
class ProjectSettingsValue extends Equatable {
  @JsonKey(name: 'a')
  final String key;

  @JsonKey(name: 'b')
  final dynamic value;

  ProjectSettingsValue({
    required this.key,
    required this.value,
  });

  @override
  List<Object?> get props => [
        key,
        value,
      ];

  ProjectSettingsValue copyWith({
    String? key,
    dynamic value,
  }) {
    return ProjectSettingsValue(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  factory ProjectSettingsValue.fromJson(Map<String, dynamic> json) =>
      _$ProjectSettingsValueFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectSettingsValueToJson(this);

  @override
  bool get stringify => true;
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
)
class Revision extends Equatable {
  @JsonKey(name: 'a')
  final String content;

  @JsonKey(name: 'b')
  final int numChanges;

  @JsonKey(name: 'c')
  final double percentChanges;

  @JsonKey(name: 'd')
  final DateTime date;

  Revision({
    required this.content,
    required this.numChanges,
    required this.percentChanges,
    required this.date,
  });

  Revision.minimum({
    required String content,
  })  : content = content,
        numChanges = 0,
        percentChanges = 0,
        date = DateTime.now().toUtc();

  @override
  List<Object?> get props => [
        content,
        numChanges,
        percentChanges,
        date,
      ];

  Revision copyWith({
    String? content,
    int? numChanges,
    double? percentChanges,
    DateTime? date,
  }) {
    return Revision(
      content: content ?? this.content,
      numChanges: numChanges ?? this.numChanges,
      percentChanges: percentChanges ?? this.percentChanges,
      date: date ?? this.date,
    );
  }

  factory Revision.fromJson(Map<String, dynamic> json) =>
      _$RevisionFromJson(json);

  Map<String, dynamic> toJson() => _$RevisionToJson(this);

  @override
  bool get stringify => true;
}
