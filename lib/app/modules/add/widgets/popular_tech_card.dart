import 'package:codealerts_app/app/data/models/project.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularTechCard extends StatelessWidget {
  final Map tech;

  const PopularTechCard({
    Key? key,
    required this.tech,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    tech['title']![0].toUpperCase(),
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
                    tech['title']!,
                    style: Get.textTheme.headline6,
                  ),
                  SizedBox(height: 3),
                  Text(
                    tech['description']!,
                    style: Get.textTheme.bodyText2!.copyWith(
                      color: Color(0xFF606060),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onPressed: () async {
        // await Get.toNamed('/view/${project.id}');
      },
    );
  }
}
