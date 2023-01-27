import 'package:flutter/material.dart';
import 'package:foood_delivery/controllers/popular_product_controller.dart';
import 'package:foood_delivery/pages/food/popular_food_detail.dart';
import 'package:foood_delivery/pages/food/recomended_food_detail.dart';
import 'package:foood_delivery/pages/home/food_page_body.dart';
import 'package:foood_delivery/pages/home/main_food_page.dart';
import 'package:foood_delivery/routes/route_help.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: MainFoodPage(),
      initialRoute: RouterHelp.initial,
      getPages: RouterHelp.routes,
    );
  }
}
