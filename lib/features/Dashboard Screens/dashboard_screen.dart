import 'package:fix_my_ride/Common/widgets/custom_text.dart';
import 'package:fix_my_ride/features/Dashboard%20Screens/Widgets/dashboard_services.dart';
import 'package:fix_my_ride/features/Dashboard%20Screens/Widgets/dashboard_slider.dart';
import 'package:fix_my_ride/features/Dashboard%20Screens/Widgets/drawer.dart';
import 'package:fix_my_ride/utills/constants/size_box.dart';
import 'package:flutter/material.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.grey5),
        backgroundColor: AppColors.blue100,
        elevation: 0,
        title: CustomText(
          text: 'Fix My Ride',
          txtColor: AppColors.grey5,
          fontSize: 20,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle_outlined,
              color: AppColors.grey10,
              size: 27,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DashboardSlider(),
              const CustomSizedBox(
                height: 0.05,
              ),
              CustomText(
                text: 'Please Select a Service',
                txtColor: AppColors.grey80,
                fontSize: 18,
                fontFamily: 'Poppins',
              ),
              const CustomSizedBox(
                height: 0.02,
              ),
              DashboardServices(),
            ],
          ),
        ),
      ),
    );
  }
}
