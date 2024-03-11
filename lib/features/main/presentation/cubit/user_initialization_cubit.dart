import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fogverse_mobile/services/logger_service.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

part 'user_initialization_state.dart';

@Injectable()
@Singleton()
class UserInitializationCubit extends Cubit<UserInitializationState> {
  UserInitializationCubit() : super(const UserInitializationState());

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> init() async {
    await setupToken();
  }

  Future<void> setupToken() async {
    _firebaseMessaging.requestPermission();
    _firebaseMessaging.getToken().then((token) {
      LoggerService.i('Token: $token');
      // Send this token to your server to use it for sending notifications
    });
  }
}
