import 'package:codealerts_app/app/data/models/project.dart';

abstract class ProjectService {
  ///
  Future<void> initProvider();

  ///
  Future<Project?> byId(String id);

  ///
  Future<List<Project>> all();

  ///
  Future<String> add(Project project);

  ///
  Future<void> update(Project project);

  ///
  Future<void> removeById(String id);
}
