import 'package:codealerts_app/app/modules/add/widgets/app_bar.dart';
import 'package:codealerts_app/app/modules/add/widgets/step_one_content.dart';
import 'package:codealerts_app/app/modules/add/widgets/step_two_content.dart';
import 'package:codealerts_app/app/widgets/view_loading_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_controller.dart';

class AddView extends GetView<AddController> {
  @override
  Widget build(BuildContext context) {
    final _addCtrl = Get.find<AddController>(tag: 'add');

    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        child: CustomScrollView(
          slivers: <Widget>[
            AddAppBar(),
            // ViewByBottomTab(),
            Obx(
              () => !_addCtrl.isOnInitReady.value
                  ? SliverFillRemaining(
                      child: ViewLoadingIndicator(),
                    )
                  : _addCtrl.selectedSource.value == null
                      ? StepOneContent()
                      : StepTwoContent(),
            ),
          ],
        ),
      ),
    );
  }
}
