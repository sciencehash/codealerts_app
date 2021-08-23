import 'package:codealerts_app/app/data/models/project.dart';
import 'package:codealerts_app/app/modules/add/widgets/source_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepOneContent extends StatelessWidget {
  const StepOneContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'Select a source',
              style: Get.textTheme.bodyText1,
            ),
          ),
          SizedBox(height: 5),
          SourceCard(source: ProjectSource.github_com),
          SizedBox(height: 6),
          SourceCard(source: ProjectSource.npmjs_com),
          SizedBox(height: 6),
          SourceCard(source: ProjectSource.pub_dev),
          // SizedBox(height: 10),
          // Padding(
          //   padding: const EdgeInsets.all(12),
          //   child: Text(
          //     'Popular technologies',
          //     style: Get.textTheme.bodyText1,
          //   ),
          // ),
          // SizedBox(height: 5),
          // PopularTechCard(
          //   tech: {
          //     'title': 'React',
          //     'description': 'JavaScript Library · GitHub.com',
          //     'image': 'react',
          //     'source': ProjectSource.github_com,
          //     'url': '',
          //   },
          // ),
          // SizedBox(height: 6),
          // PopularTechCard(
          //   tech: {
          //     'title': 'Flutter',
          //     'description': 'Dart UI toolkit · GitHub.com',
          //     'image': 'flutter',
          //     'source': ProjectSource.custom_web,
          //     'url': 'https://flutter.dev/docs/whats-new',
          //   },
          // ),
          // SizedBox(height: 6),
          // PopularTechCard(
          //   tech: {
          //     'title': 'Angular',
          //     'description': 'a · GitHub.com',
          //     'image': 'angular',
          //     'source': ProjectSource.github_com,
          //     'url': '',
          //   },
          // ),
          // SizedBox(height: 6),
          // PopularTechCard(
          //   tech: {
          //     'title': 'Vue',
          //     'description': 'V · GitHub.com',
          //     'image': 'vue',
          //     'source': ProjectSource.github_com,
          //     'url': '',
          //   },
          // ),
          SizedBox(height: 6),
        ],
      ),
    );
  }
}
