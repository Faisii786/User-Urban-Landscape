import 'package:fix_my_ride/Common/widgets/custom_back_button.dart';
import 'package:fix_my_ride/Common/widgets/custom_button.dart';
import 'package:fix_my_ride/Common/widgets/custom_text.dart';
import 'package:fix_my_ride/Common/widgets/custom_text_field.dart';
import 'package:fix_my_ride/features/Authentication/View/Reset%20Password/reset_password.dart';
import 'package:fix_my_ride/features/Authentication/View/Signup/sign_up_screen.dart';
import 'package:fix_my_ride/features/Authentication/View/Wellcome/wellcome_screen.dart';
import 'package:fix_my_ride/utills/constants/images.dart';
import 'package:fix_my_ride/utills/constants/size_box.dart';
import 'package:flutter/material.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.appColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: CustomBackButton(
                      ontap: () {
                        Get.to(() => const WelcomeScreen());
                      },
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomText(
                          text: 'SIGN IN',
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Column(
                children: [
                  CustomText(
                    text: 'Please sign in to continue',
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
                    height: 0.02,
                  ),
                  const CustomTextField(
                    hintText: 'Password',
                    obscureText: true,
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.visibility_off,
                  ),
                  const CustomSizedBox(
                    height: 0.02,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const ResetPassword());
                      },
                      child: CustomText(
                        text: 'Forgot Password?',
                        txtColor: AppColors.appColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const CustomSizedBox(
                    height: 0.05,
                  ),
                  CustomButton(
                    btnText: 'LOGIN',
                    ontap: () {},
                    btnColor: AppColors.appColor,
                    txtColor: Colors.white,
                  ),
                  const CustomSizedBox(
                    height: 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Don't have an account?",
                        txtColor: AppColors.grey80,
                        fontSize: 14,
                      ),
                      const CustomSizedBox(
                        width: 0.03,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const SignupScreen());
                        },
                        child: CustomText(
                          text: "Register here",
                          txtColor: AppColors.appColor,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
