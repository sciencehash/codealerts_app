import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
)
class Notification extends Equatable {
  /// Document ID or Key on local storage
  final String id;

  @JsonKey(name: 'a')
  final String title;

  @JsonKey(name: 'b')
  final String content;

  @JsonKey(name: 'c')
  final String projectId;

  @JsonKey(name: 'd')
  final date;

  Notification({
    required this.id,
    required this.title,
    required this.content,
    required this.projectId,
    required this.date,
  });

  Notification.minimum({
    required String title,
    required String content,
    required String projectId,
  })  : id = '',
        title = title,
        content = content,
        projectId = projectId,
        date = DateTime.now().toUtc();

  @override
  List<Object?> get props => [
        id,
        title,
        content,
        projectId,
        date,
      ];

  Notification copyWith({
    String? id,
    String? title,
    String? content,
    String? projectId,
    DateTime? date,
  }) {
    return Notification(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      projectId: projectId ?? this.projectId,
      date: date ?? this.date,
    );
  }

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);

  //
  factory Notification.fromHiveEntry(String entryId, Map value) {
    //
    var json = Map<String, dynamic>.from(
      value,
    );

    //
    json['id'] = entryId;

    //
    return _$NotificationFromJson(json);
  }

  Map<String, dynamic> toHiveEntry() => this.toJson()..remove('id');

  @override
  bool get stringify => true;
}
