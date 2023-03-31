// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/dummy_and_detail.dart';
import '../widget/profile_widget/user_profile.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({Key? key}) : super(key: key);
   DummyDetailAndTaskController detailAndTaskController =Get.find<DummyDetailAndTaskController>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child:SingleChildScrollView(child: UserProfile())
        ),
      ),
    );
  }
}
