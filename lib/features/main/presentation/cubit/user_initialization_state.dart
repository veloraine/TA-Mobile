part of 'user_initialization_cubit.dart';

class UserInitializationState extends Equatable {
  final String? token;

  const UserInitializationState({
    this.token,
  });

  UserInitializationState copyWith({
    String? token,
  }) {
    return UserInitializationState(
      token: token ?? this.token,
    );
  }

  @override
  List<Object?> get props => [
        token,
      ];
}
