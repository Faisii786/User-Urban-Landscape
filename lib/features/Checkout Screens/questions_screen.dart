import 'package:fix_my_ride/Common/widgets/custom_button.dart';
import 'package:fix_my_ride/features/Checkout%20Screens/check_out_screen.dart';
import 'package:flutter/material.dart';
import 'package:fix_my_ride/Common/widgets/custom_text_field.dart';
import 'package:fix_my_ride/Common/widgets/custom_text.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';
import 'package:get/get.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: const CustomText(
          text: 'Questions',
          txtColor: Colors.white,
          fontSize: 20,
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CustomTextField(
              hintText: 'Name',
              prefixIcon: Icons.person,
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              hintText: 'Email',
              prefixIcon: Icons.email,
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              hintText: 'Mobile',
              prefixIcon: Icons.phone,
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              hintText: 'Vehicle',
              prefixIcon: Icons.car_repair,
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hintText: 'Date',
                    prefixIcon: Icons.date_range,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: CustomTextField(
                    hintText: 'Time',
                    prefixIcon: Icons.timelapse,
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomButton(
              btnColor: AppColors.appColor,
              txtColor: AppColors.grey5,
              btnText: 'CONTINUE',
              ontap: () {
                Get.to(() => const CheckoutScreen());
              },
              isOutlined: false,
            )
          ],
        ),
      ),
    );
  }
}
