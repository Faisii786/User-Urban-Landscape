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
              'https://th.bing.com/th/id/OIP.cBcOnpIzhlkY-4eke1KwPgHaEI?rs=1&pid=ImgDetMain',
              fit: BoxFit.cover),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
              'https://i.pinimg.com/originals/ae/db/c8/aedbc8ed80c61baae63e06bdbfd532b2.jpg',
              fit: BoxFit.cover),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
              'https://th.bing.com/th/id/OIP.LAuKDQpOzr6xOjgCRw0RhwHaFW?rs=1&pid=ImgDetMain',
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
