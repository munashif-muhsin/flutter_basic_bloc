import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/profile_bloc.dart';

class ProfileErrorView extends StatelessWidget {
  const ProfileErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final state = bloc.state;

    if (state is! ProfileError) {
      return const SizedBox.shrink();
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Something went wrong. \n\n${state.error.toString()}",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.red),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          TextButton(
            onPressed: () => bloc.add(InitializeProfile()),
            child: const Text("Reload"),
          ),
        ],
      ),
    );
  }
}
