import 'package:fix_my_ride/Common/widgets/custom_button.dart';
import 'package:fix_my_ride/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:fix_my_ride/Common/widgets/custom_text.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';
import 'package:get/get.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100,
              ),
              const SizedBox(height: 24),
              const CustomText(
                text: 'Successful !!',
                txtColor: Colors.black87,
                fontSize: 20,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const CustomText(
                text: 'Your order was done successfully',
                txtColor: Colors.black54,
                fontSize: 16,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              CustomButton(
                btnColor: AppColors.blue100,
                btnText: 'MY BOOKINGS',
                txtColor: AppColors.grey5,
                isOutlined: false,
                ontap: () {
                  Get.to(() => BottomNavBar());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
