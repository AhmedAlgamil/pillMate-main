import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'profile_state.dart';

class ProfileScreenCubit extends Cubit<ProfileState> {
  ProfileScreenCubit() : super(ProfileStateInitial());

  static ProfileScreenCubit get(BuildContext context) =>
      BlocProvider.of(context);
  bool isNotificationEnabled = true;
  bool isDarkModeEnabled = true;

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  void changeNotification()
  {
    isNotificationEnabled = !isNotificationEnabled;
    emit(NotificationsChangedStatus());
  }

  void changeAppTheme()
  {
    isDarkModeEnabled = !isDarkModeEnabled;
    emit(DarkModeChangedStatus());
  }
}
