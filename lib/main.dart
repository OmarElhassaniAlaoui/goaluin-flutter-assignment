import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goaluin_flutter_assignment/core/services/services.dart';
import 'routs.dart';
import 'views/home_page.dart';

void main() async {
  // ensure that all services are initialized before running the app
  WidgetsFlutterBinding.ensureInitialized();
  // initial services
  await initialServices();
  // run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'goaluin Flutter Assignment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: routs,
    );
  }
}
