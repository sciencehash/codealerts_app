import 'package:codealerts_app/app/data/models/project.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum _MenuOptions {
  rename,
  remove,
}

class ProjectMenuButton extends StatelessWidget {
  final Project project;

  ProjectMenuButton({
    Key? key,
    required this.project,
  }) : super(key: key);

  // final _libraryTabCtrl = Get.find<LibraryTabController>(tag: 'libraryTab');

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_MenuOptions>(
      icon: Icon(Icons.more_vert, size: 13),
      offset: Offset(0, 45),
      onSelected: (_MenuOptions result) async {
        if (result == _MenuOptions.rename) {
          //
          // _libraryTabCtrl.renameProject(project);
        } else if (result == _MenuOptions.remove) {
          //
          // _libraryTabCtrl.deleteProject(project);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<_MenuOptions>>[
        PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.rename,
          child: Row(
            children: [
              // Icon(Icons.drive_file_rename_outline),
              // SizedBox(width: 7),
              Text('Rename'.tr),
            ],
          ),
        ),
        PopupMenuDivider(),
        PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.remove,
          child: Row(
            children: [
              // Icon(Icons.delete, color: Colors.red),
              // SizedBox(width: 7),
              Text(
                'Delete project'.tr,
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
