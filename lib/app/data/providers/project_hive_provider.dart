import 'dart:async';

import 'package:hive/hive.dart';
import 'package:codealerts_app/app/data/models/project.dart';
import 'package:codealerts_app/app/data/services/project_service.dart';

class ProjectHiveProvider extends ProjectService {
  // Hive box instance
  late Box _hiveBox;

  Future<void> initProvider() async {
    // Get Hive box instance
    _hiveBox = Hive.box('projects');
  }

  ///
  Future<Project?> byId(String id) async {
    final boxValue = _hiveBox.get(int.parse(id));
    return boxValue != null
        ? Project.fromHiveEntry(
            id,
            Map<String, dynamic>.from(boxValue),
          )
        : null;
  }

  ///
  Future<List<Project>> all() async {
    List<Project> projects = [];
    final keys = List<String>.from(_hiveBox.keys);
    for (String key in keys) {
      var value = await _hiveBox.get(key);
      projects.add(
        Project.fromHiveEntry(
          key.toString(),
          Map<String, dynamic>.from(value),
        ),
      );
    }
    return projects;
  }

  ///
  Future<String> add(Project project) async {
    final int newId = await _hiveBox.add(project.toHiveEntry());
    return newId.toString();
  }

  ///
  Future<void> update(Project project) async {
    await _hiveBox.put(int.parse(project.id), project.toHiveEntry());
  }

  ///
  Future<void> removeById(String id) async {
    await _hiveBox.delete(int.parse(id));
  }
}
