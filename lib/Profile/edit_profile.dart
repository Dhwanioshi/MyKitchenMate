import 'package:flutter/material.dart';
import 'package:mykitchenapp/styling/appbar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar("Edit Profile"),
      body: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/Profile.png'),
          ),
        ],
      ),
    );
  }
}
