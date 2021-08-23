import 'package:codealerts_app/app/modules/home/widgets/app_bar.dart';
import 'package:codealerts_app/app/modules/home/widgets/empty_list_message.dart';
import 'package:codealerts_app/app/modules/home/widgets/floating_action_button.dart';
import 'package:codealerts_app/app/modules/home/widgets/home_content.dart';
import 'package:codealerts_app/app/widgets/view_loading_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final _homeCtrl = Get.find<HomeController>(tag: 'home');

    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        child: CustomScrollView(
          slivers: <Widget>[
            HomeAppBar(),
            // ViewByBottomTab(),
            Obx(
              () => !_homeCtrl.isOnInitReady.value
                  ? SliverFillRemaining(
                      child: ViewLoadingIndicator(),
                    )
                  : _homeCtrl.projects.isEmpty
                      ? EmptyListMessage()
                      : HomeContent(),
            ),
          ],
        ),
      ),
      floatingActionButton: HomeFloatingActionButton(),
    );
  }
}
