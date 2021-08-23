import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      snap: true,
      floating: true,
      toolbarHeight: 48,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Container(
        height: 48,
        padding: const EdgeInsets.fromLTRB(22, 0, 12, 0),
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Code Alerts',
                style: Get.textTheme.headline5,
              ),
            ),
            IconButton(
              icon: Icon(Icons.notifications, size: 19),
              iconSize: 23,
              onPressed: () async {
                await Get.toNamed('/notifications');
              },
            ),
            // IconButton(
            //   icon: Icon(Icons.search, size: 19),
            //   iconSize: 23,
            //   onPressed: () {
            //     //
            //   },
            // ),
            IconButton(
              icon: Icon(Icons.settings, size: 23),
              iconSize: 23,
              onPressed: () async {
                await Get.toNamed('/settings');
              },
            ),
          ],
        ),
      ),
      // expandedHeight: 48,
      // bottom: TopBarByBottomTab(),
    );
  }
}
