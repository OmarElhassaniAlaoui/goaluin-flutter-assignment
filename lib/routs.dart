import 'package:get/get.dart';
import 'package:goaluin_flutter_assignment/core/constants/app_routs.dart';
import 'package:goaluin_flutter_assignment/core/middelware/middelware.dart';
import 'package:goaluin_flutter_assignment/views/auth/login_page.dart';
import 'package:goaluin_flutter_assignment/views/first_page.dart';
import 'package:goaluin_flutter_assignment/views/home_page.dart';

List<GetPage<dynamic>> routs = [ 

  GetPage(name: "/", page:()=> const FirstPage() , middlewares: [MiddelWare()]) , 
  GetPage(name: AppRouts.homePage, page: ()=>const HomePage()),
  GetPage(name: AppRouts.loginPage, page: ()=>const LoginPage()) , 

];
