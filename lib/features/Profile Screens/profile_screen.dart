import 'package:flutter/material.dart';
import 'package:fix_my_ride/Common/widgets/custom_text.dart';
import 'package:fix_my_ride/utills/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ProfileHeader(),
          SizedBox(height: 16),
          Expanded(child: ProfileMenuList()),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.appColor,
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CustomText(
              text: 'FA',
              txtColor: Colors.black87,
              fontSize: 24,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
          CustomText(
            text: 'Faisal Aslam',
            txtColor: Colors.white,
            fontSize: 18,
            textAlign: TextAlign.center,
          ),
          CustomText(
            text: 'faisalaslam218@gmail.com',
            txtColor: Colors.white,
            fontSize: 14,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ProfileMenuList extends StatelessWidget {
  const ProfileMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: const [
        ProfileMenuItem(
          icon: Icons.directions_car,
          label: 'My Vehicles',
          color: Colors.blue,
        ),
        ProfileMenuItem(
          icon: Icons.calendar_today,
          label: 'My Bookings',
          color: Colors.grey,
        ),
        ProfileMenuItem(
          icon: Icons.rate_review,
          label: 'My Reviews',
          color: Colors.green,
        ),
        ProfileMenuItem(
          icon: Icons.edit,
          label: 'Edit Profile',
          color: Colors.blue,
        ),
        ProfileMenuItem(
          icon: Icons.delete,
          label: 'Delete Profile',
          color: Colors.red,
        ),
        ProfileMenuItem(
          icon: Icons.logout,
          label: 'Logout',
          color: Colors.red,
        ),
      ],
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: CustomText(
        text: label,
        txtColor: Colors.black87,
        fontSize: 16,
        textAlign: TextAlign.start,
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
      onTap: () {},
    );
  }
}
