import 'package:fix_my_ride/features/Booking%20Screens/no_booking_screen.dart';
import 'package:fix_my_ride/features/Dashboard%20Screens/dashboard_screen.dart';
import 'package:fix_my_ride/features/Message%20Screens/chat_screen.dart';
import 'package:fix_my_ride/features/More%20Screens/more_screen.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  final BottomNavController _controller = Get.put(BottomNavController());

  final List<Widget> _screens = [
    const DashboardScreen(),
    const NoBookingsScreen(),
    const NoBookingsScreen(),
    const ChatScreen(),
    const MoreScreen(),
  ];

  BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: ScaleTransition(scale: animation, child: child),
            ),
            child: _screens[_controller.selectedIndex.value],
          )),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedLabelStyle: const TextStyle(
            fontFamily: 'Poppins',
          ),
          unselectedLabelStyle: const TextStyle(
            fontFamily: 'Poppins',
          ),
          currentIndex: _controller.selectedIndex.value,
          onTap: (index) => _controller.changeIndex(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.blue100,
          unselectedItemColor: AppColors.grey40,
          showUnselectedLabels: true,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          elevation: 0,
          items: [
            buildNavItem(Icons.home, 'Home', 0),
            buildNavItem(Icons.calendar_today, 'Appointments', 1),
            buildNavItem(Icons.person, 'Profile', 2),
            buildNavItem(Icons.message, 'Messages', 3),
            buildNavItem(Icons.grid_view, 'More', 4),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem buildNavItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Obx(() => _controller.selectedIndex.value == index
          ? buildSelectedIcon(icon, isSelected: true)
          : buildSelectedIcon(icon, isSelected: false)),
      label: label,
    );
  }

  Widget buildSelectedIcon(IconData icon, {bool isSelected = false}) {
    return AnimatedScale(
      scale: isSelected ? 0.9 : 0.9,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      child: Icon(
        icon,
        color: isSelected ? AppColors.blue100 : AppColors.grey40,
        size: 28,
      ),
    );
  }
}

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
