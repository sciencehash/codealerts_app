import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'settings_value.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
)
class SettingsValue extends Equatable {
  /// Document ID or Key on local storage
  final String key;

  @JsonKey(name: 'a')
  final dynamic value;

  SettingsValue({
    required this.key,
    required this.value,
  });

  @override
  List<Object?> get props => [
        key,
        value,
      ];

  SettingsValue copyWith({
    String? key,
    dynamic value,
  }) {
    return SettingsValue(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  factory SettingsValue.fromJson(Map<String, dynamic> json) =>
      _$SettingsValueFromJson(json);

  Map<String, dynamic> toJson() => _$SettingsValueToJson(this);

  //
  factory SettingsValue.fromHiveEntry(String entryId, Map value) {
    //
    var json = Map<String, dynamic>.from(
      value,
    );

    //
    json['id'] = entryId;

    //
    return _$SettingsValueFromJson(json);
  }

  Map<String, dynamic> toHiveEntry() => this.toJson()..remove('key');

  @override
  bool get stringify => true;
}
