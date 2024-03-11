import 'package:deliveryappn/view/screens/orders/accepted.dart';
import 'package:deliveryappn/view/screens/orders/archive.dart';
import 'package:deliveryappn/view/screens/orders/pending.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenContrllerImp extends HomeScreenController {
  int currentpage = 0;

  List listpage = const [
    // HomePage(),
    PendingsOrders(),
    AcceptedOrders(),

    ArchiveOrders(),
  ];

  List bottomappbar = [
    {
      "title": "Pendings",
      "icon": Icons.alarm,
    },
    {
      "title": "Accepted",
      "icon": Icons.access_alarm,
    },
    {
      "title": "Settings",
      "icon": Icons.settings,
    },

    // "Home",
    // "Setting",
    // "Profile",
    // "Favorate",
  ];

  @override
  // ignore: avoid_renaming_method_parameters
  changePage(int i) {
    currentpage = i;
    update();
  }
}
