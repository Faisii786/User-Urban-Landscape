import 'package:fix_my_ride/Common/widgets/custom_back_button.dart';
import 'package:fix_my_ride/Common/widgets/custom_button.dart';
import 'package:fix_my_ride/Common/widgets/custom_text.dart';
import 'package:fix_my_ride/features/Checkout%20Screens/questions_screen.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';
import 'package:fix_my_ride/utills/constants/size_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesFullDetailsScreen extends StatelessWidget {
  const ServicesFullDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                'https://th.bing.com/th/id/R.a394d6121d4751d622ddc6a17427c150?rik=oEGFSPKg7xaBoQ&pid=ImgRaw&r=0',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const Positioned(
                top: 30,
                left: 16,
                child: CustomBackButton(),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Brake Repair',
                        txtColor: Colors.black87,
                        fontSize: 18,
                        textAlign: TextAlign.start,
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time, color: Colors.black54),
                          SizedBox(width: 4),
                          CustomText(
                            text: '5h 0m',
                            txtColor: Colors.black54,
                            fontSize: 14,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const CustomSizedBox(
                    height: 0.02,
                  ),
                  const CustomText(
                    text: 'د.إ 700',
                    txtColor: Colors.blue,
                    fontSize: 24,
                    textAlign: TextAlign.start,
                  ),
                  const CustomSizedBox(
                    height: 0.02,
                  ),
                  const CustomText(
                    text:
                        "It's time to inspect your car brakes which is the most important part in the car considering Safety.\n\nBook the service and let us check and repair your car brakes.\n\nParts not included.",
                    txtColor: Colors.black87,
                    fontSize: 14,
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(),
                  CustomButton(
                    btnColor: AppColors.blue100,
                    txtColor: AppColors.grey5,
                    btnText: 'Book This Service',
                    ontap: () {
                      Get.to(() => const QuestionsScreen());
                    },
                    isOutlined: false,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
