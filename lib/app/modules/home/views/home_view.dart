import 'package:codealerts_app/app/modules/home/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        child: CustomScrollView(
          slivers: <Widget>[
            HomeAppBar(),
            // ViewByBottomTab(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(height: 6),
                  Text('HOME'),
                  SizedBox(height: 6),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
