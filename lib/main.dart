import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pill_mate/core/routes/app_routes.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:pill_mate/features/payment/presentation/screens/payment_screen.dart';
import 'package:pill_mate/features/profile/presentation/screens/account_screen.dart';
import 'package:pill_mate/features/profile/presentation/screens/profile_screen.dart';
import 'package:pill_mate/features/profile/presentation/store/profile_cubit.dart';
import 'package:pill_mate/features/profile/presentation/store/profile_state.dart';

import 'core/utils/themes.dart';
import 'features/notifications/presentation/screens/notifications_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) {
        return ProfileScreenCubit()..changeAppTheme();
      },)
    ], child: ScreenUtilInit(
        designSize: const Size(428, 926),
        child: BlocBuilder<ProfileScreenCubit,ProfileState>(builder: (BuildContext context, ProfileState state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppStrings.appName,
            theme: AppThemes.darkMode,
            darkTheme: AppThemes.darkMode,
            themeMode: ProfileScreenCubit.get(context).isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
            home: AccountScreen(),
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) =>
                    appRoutes(settings.name!, settings.arguments),
              );
            },
          );
        },

        )
    ));
  }
}
