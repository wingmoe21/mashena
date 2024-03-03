import 'dart:typed_data';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'state/profile_picture_state.dart';

/// Provider for the profile picture view model.
final profilePictureViewModelProvider = StateNotifierProvider.family<
    ProfilePictureViewModel,
    ProfilePictureState,
    String>((ref, userId) => ProfilePictureViewModel(ref, userId));

class ProfilePictureViewModel extends StateNotifier<ProfilePictureState> {
  late final Ref ref;
  final String userId;

  ProfilePictureViewModel(this.ref, this.userId)
      : super(ProfilePictureState.initial());

  void editProfilePicture(Uint8List? image) {
    state = state.copyWith(profilePicture: image);
  }
}
