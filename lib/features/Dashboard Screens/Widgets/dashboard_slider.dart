import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DashboardSlider extends StatelessWidget {
  const DashboardSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
              'https://th.bing.com/th/id/OIP.cpSRfmwd2cdxvAtNATS04wHaE8?rs=1&pid=ImgDetMain',
              fit: BoxFit.cover),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
              'https://th.bing.com/th/id/R.a02b48764aeed010ef3193ad501394de?rik=U68n4caFLssBYg&riu=http%3a%2f%2fst.houzz.com%2fsimgs%2fdd418d6e00f8738b_4-9793%2ftropical-landscape.jpg&ehk=q6V0OkFtt6DP9VzldXhjj9VLAsepmxknkHoSO%2fI18Pc%3d&risl=&pid=ImgRaw&r=0',
              fit: BoxFit.cover),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
              'https://th.bing.com/th/id/OIP.FndCxQhIjLhtwpiWYjNQxAHaE4?rs=1&pid=ImgDetMain',
              fit: BoxFit.cover),
        ),
      ],
      options: CarouselOptions(
          height: 230,
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1),
    );
  }
}
