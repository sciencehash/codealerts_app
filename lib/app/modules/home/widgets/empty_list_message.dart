import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmptyListMessage extends StatelessWidget {
  const EmptyListMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        color: Get.theme.cardColor,
        // alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.code,
              size: 42,
              color: Get.theme.primaryColor,
            ),
            SizedBox(height: 15),
            Text(
              'There are no items here yet.'.tr,
              style: Get.textTheme.bodyText1,
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
