import 'package:fix_my_ride/Common/widgets/custom_button.dart';
import 'package:fix_my_ride/features/Checkout%20Screens/payment_sucess_screen.dart';
import 'package:fix_my_ride/utills/constants/size_box.dart';
import 'package:flutter/material.dart';
import 'package:fix_my_ride/Common/widgets/custom_text.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

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
          text: 'Checkout',
          txtColor: Colors.white,
          fontSize: 20,
          textAlign: TextAlign.center,
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ServiceDetailsSection(),
            CustomSizedBox(
              height: 0.03,
            ),
            CustomerDetailsSection(),
            CustomSizedBox(
              height: 0.03,
            ),
            PriceDetailsSection(),
            CustomSizedBox(
              height: 0.05,
            ),
            PaymentButtonsSection(),
          ],
        ),
      ),
    );
  }
}

class ServiceDetailsSection extends StatelessWidget {
  const ServiceDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Service Details',
          txtColor: AppColors.grey60,
          fontSize: 16,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 8),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://th.bing.com/th/id/R.a394d6121d4751d622ddc6a17427c150?rik=oEGFSPKg7xaBoQ&pid=ImgRaw&r=0',
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Brake Repair',
                            txtColor: Colors.black87,
                            fontSize: 18,
                            textAlign: TextAlign.start,
                          ),
                          CustomText(
                            text: '700 \$',
                            txtColor: Colors.blue,
                            fontSize: 20,
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.calendar_today,
                              color: Colors.black54, size: 16),
                          SizedBox(width: 4),
                          CustomText(
                            text: '04-11-2024',
                            txtColor: Colors.black54,
                            fontSize: 14,
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(width: 16),
                          Icon(Icons.access_time,
                              color: Colors.black54, size: 16),
                          SizedBox(width: 4),
                          CustomText(
                            text: '3:16 AM',
                            txtColor: Colors.black54,
                            fontSize: 14,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomerDetailsSection extends StatelessWidget {
  const CustomerDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Customer Details',
          txtColor: AppColors.grey60,
          fontSize: 16,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 8),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailRow(label: 'Name', value: 'Faisal Aslam'),
                DetailRow(label: 'Email', value: 'faisalaslam218@gmail.com'),
                DetailRow(label: 'Phone', value: '03558417720'),
                DetailRow(label: 'Vehicle', value: '183Gejeh'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PriceDetailsSection extends StatelessWidget {
  const PriceDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Price Details',
          txtColor: AppColors.grey60,
          fontSize: 16,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 8),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                DetailRow(label: 'Price', value: 'د.إ 700'),
                DetailRow(label: 'VAT (5%)', value: 'د.إ 35'),
                Divider(),
                DetailRow(label: 'Total', value: 'د.إ 735'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PaymentButtonsSection extends StatelessWidget {
  const PaymentButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnColor: AppColors.appColor,
      btnText: 'Confirm Booking',
      txtColor: AppColors.grey100,
      isOutlined: true,
      ontap: () {
        Get.to(() => const PaymentSuccessScreen());
      },
    );
  }
}

class DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const DetailRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: label,
            txtColor: Colors.black87,
            fontSize: 14,
            textAlign: TextAlign.start,
          ),
          CustomText(
            text: value,
            txtColor: Colors.black87,
            fontSize: 14,
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
