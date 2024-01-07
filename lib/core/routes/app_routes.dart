import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/features/home/presentation/screens/category_screen.dart';
import 'package:pill_mate/features/home/presentation/screens/favourite_screen.dart';
import 'package:pill_mate/features/home/presentation/screens/product_screen.dart';
import 'package:pill_mate/features/notifications/presentation/screens/notifications_screen.dart';
import 'package:pill_mate/features/payment/presentation/screens/details_screens.dart';
import 'package:pill_mate/features/payment/presentation/screens/payment_screen.dart';
import 'package:pill_mate/features/profile/presentation/screens/account_screen.dart';
import 'package:pill_mate/features/profile/presentation/screens/profile_screen.dart';

import '../../features/initial/splash/splash.dart';
import '../../features/home/presentation/bloc/cubit/search_cubit.dart';

class Routes {
  static const String initialRoute = '/';
  static const String categoryRoute = '/category';
  static const String favouriteRoute = '/favourite';
  static const String productRoute = '/product';
  static const String paymentScreen = '/paymentScreen';
  static const String detailsScreen = '/detailsScreen';
  static const String profileScreen = '/profileScreen';
  static const String accountScreen = '/accountScreen';
  static const String notificationScreen = '/notificationScreen';
}

Widget appRoutes(String route, dynamic arg) {
  switch (route) {
    case Routes.initialRoute:
      return const SplashScreen();

    case Routes.categoryRoute:
      return BlocProvider(
        create: (context) => SearchCubit<String>(),
        child: const CategoryScreen(),
      );
    case Routes.favouriteRoute:
      return const FavouriteScreen();
    case Routes.productRoute:
      return const ProductScreen();

    case Routes.paymentScreen:
      return const PaymentScreen();
    case Routes.detailsScreen:
      return const DetailsScreen();
    case Routes.accountScreen:
      return const AccountScreen();
    case Routes.profileScreen:
      return const ProfileScreen();
    case Routes.notificationScreen:
      return NotificationScreen();
    default:
      return const Scaffold(
        body: Center(
          child: Text('Not Found..!'),
        ),
      );
  }
}
