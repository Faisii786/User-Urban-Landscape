import 'package:fix_my_ride/Common/widgets/custom_text.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';
import 'package:flutter/material.dart';

class OurWorkScreen extends StatelessWidget {
  const OurWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: AppColors.grey5),
        backgroundColor: AppColors.appColor,
        elevation: 0,
        title: CustomText(
          text: 'Explore Our Work',
          txtColor: AppColors.grey5,
          fontSize: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        gradient: const LinearGradient(
                          colors: [Color(0xFFFFFFFF), Color(0xFFE8F5E9)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 6.0,
                            spreadRadius: 1.0,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(5.0)),
                              child: Image.network(
                                'https://th.bing.com/th/id/R.e1df3a3b4619a7053eb88ad5c510eee1?rik=RRINQh4DIpfrEA&pid=ImgRaw&r=0',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'Sample ${index + 1}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black54,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
