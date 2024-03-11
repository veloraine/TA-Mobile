import 'package:flutter/material.dart';
import 'package:fogverse_mobile/services/dependencies/di.dart';
import 'package:fogverse_mobile/services/notification/notification_controller.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await NotificationController.initializeLocalNotifications(debug: true);
  await NotificationController.initializeRemoteNotifications(debug: true);
  await NotificationController.getInitialNotificationAction();
  runApp(const App());
}