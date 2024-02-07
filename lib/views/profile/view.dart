import 'package:flutter/material.dart';
import 'package:wameed/core/design/arrow_back_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: const ArrowBackButton(),
        title: const Text("Profile"),
        titleTextStyle: const TextStyle(fontFamily: 'poppins',fontWeight: FontWeight.w600,fontSize: 24,color: Colors.black),
        centerTitle: true,
      ),
    );
  }
}
