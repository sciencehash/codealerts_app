import 'package:codealerts_app/app/data/models/project.dart';
import 'package:codealerts_app/app/data/providers/project_hive_provider.dart';
import 'package:codealerts_app/app/data/services/project_service.dart';

class AddRepository {
  late ProjectService _projectService;

  Future<void> initProviders({required bool isLocal}) async {
    //
    // Init Project service
    //

    _projectService = ProjectHiveProvider();

    await _projectService.initProvider();
  }

  //
  // Project methods
  //

  // Future<List<Project>?> getAllProjects() async {
  //   return await _projectService.all();
  // }

  // Stream<Project?> watchProjectById(String id) {
  //   return _projectService.watchById(id);
  // }

  Future<String> addProject(Project project) async {
    return await _projectService.add(project);
  }

  // Future<void> updateProject(Project project) async {
  //   await _projectService.update(project);
  // }

  // Future<void> removeProjectById(String id) async {
  //   await _projectService.removeById(id);
  // }

  // Future<List<Project>> getAllLibraries() async {
  //   return await _projectService.all();
  // }
}
