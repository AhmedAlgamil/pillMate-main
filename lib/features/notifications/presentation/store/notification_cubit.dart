import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationStates> {
  NotificationCubit() : super(NotificationInitial());

  static NotificationCubit get(BuildContext context) =>
      BlocProvider.of(context);
  bool isNotificationEnabled = true;
  bool isDarkModeEnabled = true;

  void changeNotification()
  {
    isNotificationEnabled = !isNotificationEnabled;
    emit(NotificationsChangedStatus());
  }

  void changeDarkMode()
  {
    isDarkModeEnabled = !isDarkModeEnabled;
    emit(DarkModeChangedStatus());
  }
}
