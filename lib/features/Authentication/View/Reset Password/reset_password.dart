import 'package:fix_my_ride/Common/widgets/custom_button.dart';
import 'package:fix_my_ride/Common/widgets/custom_text.dart';
import 'package:fix_my_ride/Common/widgets/custom_text_field.dart';
import 'package:fix_my_ride/features/Authentication/View/Signin/sign_in_screen.dart';
import 'package:fix_my_ride/utills/constants/images.dart';
import 'package:fix_my_ride/utills/constants/size_box.dart';
import 'package:flutter/material.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blue100,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Reset Password',
                    txtColor: AppColors.grey5,
                    fontFamily: 'Poppins',
                    fontSize: 24,
                  ),
                  const CustomSizedBox(
                    width: 0.04,
                  ),
                  Image.asset(
                    CustomImages.appLogo,
                    width: 60,
                    height: 80,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Column(
                children: [
                  CustomText(
                    text: 'Please enter your email',
                    txtColor: AppColors.grey80,
                    fontSize: 18,
                  ),
                  const CustomSizedBox(
                    height: 0.02,
                  ),
                  const CustomTextField(
                    hintText: 'Email',
                    prefixIcon: Icons.email,
                  ),
                  const CustomSizedBox(
                    height: 0.04,
                  ),
                  CustomButton(
                    btnText: 'Reset',
                    ontap: () {},
                    btnColor: AppColors.blue100,
                    txtColor: Colors.white,
                  ),
                  const CustomSizedBox(
                    height: 0.02,
                  ),
                  CustomButton(
                    isOutlined: true,
                    btnText: 'GO TO SIGN IN',
                    ontap: () {
                      Get.to(() => SigninScreen());
                    },
                    btnColor: AppColors.blue100,
                    txtColor: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
