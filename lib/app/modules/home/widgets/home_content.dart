import 'package:codealerts_app/app/data/models/project.dart';
import 'package:codealerts_app/app/modules/home/controllers/home_controller.dart';
import 'package:codealerts_app/app/modules/home/widgets/project_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _homeCtrl = Get.find<HomeController>(tag: 'home');

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          SizedBox(height: 6),
          for (Project project in _homeCtrl.projects)
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: ProjectCard(
                project: project,
              ),
            ),
          // Bottom extra spacer
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
