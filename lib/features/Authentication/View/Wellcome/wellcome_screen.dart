import 'package:fix_my_ride/Common/widgets/custom_button.dart';
import 'package:fix_my_ride/Common/widgets/custom_text.dart';
import 'package:fix_my_ride/features/Authentication/View/Signin/sign_in_screen.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';
import 'package:fix_my_ride/utills/constants/images.dart';
import 'package:fix_my_ride/utills/constants/size_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const CustomText(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              CustomImages.blueAppLogo,
              width: 200,
              height: 200,
            ),
            const Spacer(
              flex: 2,
            ),
            CustomButton(
              isOutlined: true,
              btnText: 'LOG IN',
              ontap: () {
                Get.to(() => SigninScreen());
              },
            ),
            const CustomSizedBox(
              height: 0.02,
            ),
            CustomButton(
              btnText: 'SIGN UP',
              ontap: () {},
              isOutlined: false,
            ),
            const CustomSizedBox(
              height: 0.02,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'SKIP FOR NOW',
                style: TextStyle(
                    color: AppColors.blue100,
                    fontSize: 14,
                    fontFamily: 'Poppins'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
