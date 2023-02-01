import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/presentation/custom_date_picker.dart';
import '../../../core/presentation/custom_text_field.dart';
import '../../bloc/profile_bloc.dart';
import 'profile_header.dart';

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
          CustomTextField(
            label: "Your email",
            initialValue: state.user.email,
          ),
          CustomTextField(
            label: "Your password",
            initialValue: state.user.loginInfo.password,
            isObscured: true,
          ),
          CustomDatePicker(
            label: "Date of birth",
            initialValue: state.user.dob.date,
          ),
          CustomTextField(
            label: "Gender",
            initialValue: state.user.gender.toUpperCase(),
          ),
          CustomTextField(
            label: "Your phone",
            initialValue: state.user.phone,
          ),
          CustomTextField(
            label: "Address",
            initialValue: state.user.location.address,
            maxLines: 3,
          ),
          CustomTextField(
            label: "city, state",
            initialValue:
                "${state.user.location.city}, ${state.user.location.state}",
          ),
          CustomTextField(
            label: "country",
            initialValue: state.user.location.country,
          ),
        ]),
      ),
    );
  }
}
