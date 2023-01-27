import 'package:foood_delivery/pages/food/recomended_food_detail.dart';
import 'package:foood_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';

import '../pages/food/popular_food_detail.dart';

class RouterHelp {
  static const String initial = '/';
  static const String popularFood = '/popular-food';
  static const String recommendedFood = '/recommended-food';


  static String getInitial() => '$initial';
  // static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';
  static String getPopularFood() => '$popularFood';
  static String getRecommendedFood() => '$recommendedFood';

  static List<GetPage> routes = [
    GetPage(name: "/", page: () => MainFoodPage()),
    // GetPage(
    //     name: popularFood,
    //     page: () {
    //       var pageId=Get.parameters['pageId'];
    //       return PopularFoodDetail(pageId);
    //     },
    //     transition: Transition.fadeIn
    // ),
    GetPage(
        name: popularFood,
        page: () {
          return PopularFoodDetail();
        },
        transition: Transition.fadeIn
    ),
    GetPage(
        name: recommendedFood,
        page: () {
          return PopularFoodDetail();
        },
        transition: Transition.fadeIn
    ),
  ];
}
