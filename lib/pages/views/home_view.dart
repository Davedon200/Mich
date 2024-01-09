import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mich/app/modules/home/controllers/home_controller.dart';
import 'package:mich/utils/data/typography.dart';



class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          'HomePage'.h2(),
          Center(
            child: 'HomeView is working'.h2(),
          ),
        ],
      ),
    );
  }
}
