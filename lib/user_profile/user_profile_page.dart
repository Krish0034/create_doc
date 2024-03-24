import 'package:flutter/material.dart';

import '../util/app_colors.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          title: const Text("User profile page"),
          actions: [
            ElevatedButton.icon(
                onPressed: () {

                },
                icon:const Icon(Icons.notifications_none_outlined),
                label: const Text('')
            )
          ],
        ),
        body: const Column(
          children: [
            Text("home1",style: TextStyle(color: Colors.red),),
            Text("home1",style: TextStyle(color: Colors.red),),
            Text("home1",style: TextStyle(color: Colors.red),),
          ],
        ),
      ),
    );
  }
}
