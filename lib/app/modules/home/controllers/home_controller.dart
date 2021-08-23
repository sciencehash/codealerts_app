import 'dart:async';

import 'package:codealerts_app/app/data/models/project.dart';
import 'package:codealerts_app/app/modules/home/repositories/home_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //
  // Subscriptions and repositories variables
  //

  final HomeRepository homeRepository = HomeRepository();
  StreamSubscription? _projectsSubscription;

  //
  // Content variables
  //

  //
  var isOnInitReady = false.obs;

  //
  var projects = <Project>[].obs;

  @override
  void onInit() async {
    //
    await homeRepository.initProviders(
      isLocal: true,
    );

    //
    await _loadProjects();

    isOnInitReady.value = true;

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() async {
    await _projectsSubscription?.cancel();
    super.onClose();
  }

  Future<void> _loadProjects() async {
    _projectsSubscription =
        homeRepository.watchAllProjects().listen((_projects) {
      projects.value = _projects;
    });
  }
}
