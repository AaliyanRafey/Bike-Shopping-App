import 'package:bike_shopping_app/res/routes/routes_name.dart';
import 'package:bike_shopping_app/views/add_to_cart.dart';
import 'package:bike_shopping_app/views/add_to_cart2.dart';
import 'package:bike_shopping_app/views/checkout_view.dart';
import 'package:bike_shopping_app/views/home_view.dart';
import 'package:bike_shopping_app/views/shopping_cart_view.dart';
import 'package:get/get.dart';

class AppRoute {
  static appRoute() => [
    GetPage(
      name: RoutesName.homeView,
      page: () => HomeView(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 300),
    ),

    GetPage(
      name: RoutesName.addToCart,
      page: () => AddToCart(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 300),
    ),

    GetPage(
      name: RoutesName.addToCart2,
      page: () => AddToCart2(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 300),
    ),
    GetPage(
      name: RoutesName.shoppingCartView,
      page: () => ShoppingCartView(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 300),
    ),

    GetPage(
      name: RoutesName.checkoutView,
      page: () => CheckoutView(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 300),
    ),
  ];
}
