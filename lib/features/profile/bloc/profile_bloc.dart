import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:emirates_hr/features/profile/modals/user_model.dart';
import 'package:emirates_hr/features/profile/repository/profile_repo.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepo = ProfileRepository();

  ProfileBloc() : super(ProfileLoading()) {
    on<ProfileEvent>((event, emit) async {
      if (event is InitializeProfile) {
        emit(ProfileLoading());
        await _initializeProfile(emit);
      }
    });
  }

  Future<void> _initializeProfile(Emitter<ProfileState> emit) async {
    try {
      final User user = await profileRepo.getProfileData();
      emit(ProfileLoaded(user));
    } catch (e) {
      emit(ProfileError(e));
    }
  }
}
