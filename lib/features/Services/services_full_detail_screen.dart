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
                'https://i.pinimg.com/originals/21/75/7a/21757af6d0f49c4bc0d46ceb4f51f9e1.jpg',
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
                        text: 'Urban Gardening',
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
                    text: '500 \$',
                    txtColor: Colors.blue,
                    fontSize: 24,
                    textAlign: TextAlign.start,
                  ),
                  const CustomSizedBox(
                    height: 0.02,
                  ),
                  const CustomText(
                    text:
                        "Transform your outdoor spaces into lush urban gardens with our expert gardening services.\n\nWe'll help you create a green oasis in your urban environment, improving air quality and aesthetics.\n\nPlants and materials are not included.",
                    txtColor: Colors.black87,
                    fontSize: 14,
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(),
                  CustomButton(
                    btnColor: AppColors.appColor,
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
