import 'package:codealerts_app/app/data/models/project.dart';
import 'package:codealerts_app/app/modules/add/repositories/add_repository.dart';
import 'package:get/get.dart';

class AddController extends GetxController {
  //
  // Subscriptions and repositories variables
  //

  final AddRepository addRepository = AddRepository();

  //
  // Content variables
  //

  //
  var isOnInitReady = false.obs;

  //
  Rxn<ProjectSource> selectedSource = Rxn<ProjectSource>();

  //
  final sourcesDetails = {
    ProjectSource.github_com: {
      'title': 'GitHub.com',
      'description':
          '''The world's largest Git repository host, for all languages.''',
      'image': 'github',
    },
    ProjectSource.npmjs_com: {
      'title': 'NPM.com',
      'description':
          'Package manager for the JavaScript and TypeScript languages.',
      'image': 'npm',
    },
    ProjectSource.pub_dev: {
      'title': 'Pub.dev',
      'description':
          'The official package repository for Dart and Flutter apps.',
      'image': 'pubdev',
    },
  };

  @override
  void onInit() async {
    //
    await addRepository.initProviders(
      isLocal: true,
    );

    isOnInitReady.value = true;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> addProject({required Project project}) async {
    //
    await addRepository.addProject(project);
  }
}
