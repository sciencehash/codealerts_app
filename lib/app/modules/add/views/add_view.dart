import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_controller.dart';

class AddView extends GetView<AddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
