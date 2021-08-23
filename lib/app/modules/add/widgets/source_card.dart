import 'package:codealerts_app/app/data/models/project.dart';
import 'package:codealerts_app/app/modules/add/controllers/add_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SourceCard extends StatelessWidget {
  final ProjectSource source;

  const SourceCard({
    Key? key,
    required this.source,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _addCtrl = Get.find<AddController>(tag: 'add');

    final sourceDetails = _addCtrl.sourcesDetails[source];

    return RawMaterialButton(
      fillColor: Get.theme.cardTheme.color,
      padding: const EdgeInsets.all(12),
      constraints: BoxConstraints(maxWidth: 360),
      elevation: 0,
      hoverElevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      disabledElevation: 0,
      child: Container(
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 46,
                  child: AspectRatio(
                    aspectRatio: 53 / 46,
                    child: Icon(
                      Icons.code,
                      size: 46,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    sourceDetails!['title']![0].toUpperCase(),
                    style: Get.textTheme.headline5!.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sourceDetails['title']!,
                    style: Get.textTheme.headline6,
                  ),
                  SizedBox(height: 3),
                  Text(
                    sourceDetails['description']!,
                    style: Get.textTheme.bodyText2!.copyWith(
                      color: Color(0xFF606060),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      onPressed: () async {
        _addCtrl.selectedSource.value = source;
      },
    );
  }
}
