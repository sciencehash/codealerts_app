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
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text('Code Alerts'),
              ),
            ),
            // IconButton(
            //   icon: Icon(UoliaIcons.notifications, size: 19),
            //   iconSize: 23,
            //   onPressed: () {
            //     //
            //     print("Notifications");
            //   },
            // ),
            IconButton(
              icon: Icon(Icons.search, size: 19),
              iconSize: 23,
              onPressed: () {
                //
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle, size: 23),
              iconSize: 23,
              onPressed: () {
                Get.toNamed('/account');
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
