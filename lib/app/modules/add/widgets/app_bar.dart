import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      snap: true,
      floating: true,
      toolbarHeight: 48,
      // automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Container(
        height: 48,
        padding: const EdgeInsets.fromLTRB(5, 0, 12, 0),
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Add Code Project',
                style: Get.textTheme.headline5,
              ),
            ),
          ],
        ),
      ),
      // expandedHeight: 48,
      // bottom: TopBarByBottomTab(),
    );
  }
}
