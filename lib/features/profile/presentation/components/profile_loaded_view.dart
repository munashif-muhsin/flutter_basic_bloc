import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/profile_bloc.dart';
import 'profile_header.dart';
import 'profile_info_list_item.dart';

class ProfileLoadedView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  ProfileLoadedView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = BlocProvider.of<ProfileBloc>(context).state;

    if (state is! ProfileLoaded) {
      return const SizedBox.shrink();
    }

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(children: [
          // Header
          ProfileHeader(
            imageUrl: state.user.images.medium,
            name: state.user.name.displayName,
            registeredDate: state.user.registered.date,
          ),

          // Info Items
          ProfileInfoListItem(
            label: "Your email",
            initialValue: state.user.email,
          ),
          ProfileInfoListItem(
            label: "Your password",
            initialValue: state.user.loginInfo.password,
            isObscured: true,
          ),
          ProfileInfoListItem(
            label: "Your phone",
            initialValue: state.user.phone,
          ),
          ProfileInfoListItem(
            label: "city, state",
            initialValue:
                "${state.user.location.city}, ${state.user.location.state}",
          ),
          ProfileInfoListItem(
            label: "country",
            initialValue: state.user.location.country,
          ),
        ]),
      ),
    );
  }
}
