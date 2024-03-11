import 'package:deliveryappn/controller/home/homescreen_controller.dart';
import 'package:deliveryappn/core/constant/color.dart';
import 'package:deliveryappn/view/widgets/custombottomappbar_screenhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenContrllerImp homeScreenController =
        Get.put(HomeScreenContrllerImp());
    return GetBuilder<HomeScreenContrllerImp>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: const Text(
            "Orders",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: AppColor.white,
        bottomNavigationBar: const CustomBottomAppBarScreenHome(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body:    homeScreenController.listpage
            .elementAt(homeScreenController.currentpage),
      ),
    );
  }
}
