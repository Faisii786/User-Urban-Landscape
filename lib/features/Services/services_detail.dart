import 'package:fix_my_ride/Common/widgets/custom_text.dart';
import 'package:fix_my_ride/features/Services/services_full_detail_screen.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';
import 'package:fix_my_ride/utills/constants/size_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesDetail extends StatelessWidget {
  const ServicesDetail({super.key});

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
          text: 'Services Details',
          txtColor: Colors.white,
          fontSize: 20,
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(() => const ServicesFullDetailsScreen());
              },
              child: buildDetailServices(
                "Urban Gardening",
                "https://i.pinimg.com/originals/21/75/7a/21757af6d0f49c4bc0d46ceb4f51f9e1.jpg",
              ),
            ),
            buildDetailServices(
              "Sustainable Landscaping",
              "https://i.pinimg.com/originals/21/75/7a/21757af6d0f49c4bc0d46ceb4f51f9e1.jpg",
            ),
            buildDetailServices(
              "Community Parks",
              "https://i.pinimg.com/originals/21/75/7a/21757af6d0f49c4bc0d46ceb4f51f9e1.jpg",
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildDetailServices(String title, String imagePath) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: NetworkImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const CustomSizedBox(
          width: 0.05,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              textAlign: TextAlign.center,
              text: title,
              fontSize: 15,
              txtColor: AppColors.grey80,
            ),
            CustomText(
              textAlign: TextAlign.center,
              text: '5H 0M',
              fontSize: 15,
              txtColor: AppColors.grey80,
            ),
            CustomText(
              textAlign: TextAlign.center,
              text: '700 \$',
              fontSize: 15,
              txtColor: AppColors.grey80,
            ),
            const CustomSizedBox(
              height: 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomText(
                  textAlign: TextAlign.center,
                  text: 'Book Now',
                  fontSize: 15,
                  txtColor: AppColors.grey5,
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}
