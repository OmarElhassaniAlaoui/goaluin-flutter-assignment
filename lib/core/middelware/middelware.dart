import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:goaluin_flutter_assignment/core/constants/app_routs.dart';
import 'package:goaluin_flutter_assignment/core/services/services.dart';

class MiddelWare extends GetMiddleware{
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();
  @override

  RouteSettings? redirect(String? route) {

    if (myServices.sharedPreferences.getString("step") == '2') {
      return const RouteSettings(name: AppRouts.homePage);
    }
    //onboarding middleware
    if (myServices.sharedPreferences.getString("step") =='1') {
      return const RouteSettings(name: AppRouts.loginPage);
    }
    
    return null;
  }
}
