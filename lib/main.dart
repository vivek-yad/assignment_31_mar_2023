import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/Di/dependencies_injection.dart';
import 'app/features/cash_king/presentation/views/user_profile.dart';

Future<void> main() async {
  await Di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  ProfilePage(),
    );
  }
}
