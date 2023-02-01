part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileLoaded extends ProfileState {
  final User user;

  ProfileLoaded(this.user);
}

class ProfileError extends ProfileState {
  final Object error;

  ProfileError(this.error);
}
