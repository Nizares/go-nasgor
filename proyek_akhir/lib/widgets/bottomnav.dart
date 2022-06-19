import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:proyek_akhir/getx_controller/bottom_nav_controller.dart';
import 'package:proyek_akhir/pages/home.dart';
import 'package:proyek_akhir/pages/menu.dart';
import 'package:proyek_akhir/pages/riwayat.dart';
import 'package:proyek_akhir/widgets/color.dart';

class BotNav extends StatelessWidget {
  BottomNavController BotNavController = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: BotNavController.tabIndex.value,
          children: [
            Home(),
            Menu(),
            Riwayat(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: BotNavController.tabIndex.value,
          onTap: BotNavController.changeTabIndex,
          backgroundColor: orange1,
          selectedItemColor: red,
          unselectedItemColor: white2,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size: 35),
              label: 'Home',
            ),
              BottomNavigationBarItem(
                icon: Icon(Icons.food_bank_rounded, size: 35),
                label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_rounded, size: 35),
              label: 'Riwayat',
            ),
          ],
        ),
      ),
    );
  }
}