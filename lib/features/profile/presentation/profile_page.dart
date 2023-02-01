import 'package:flutter/material.dart';

import 'components/profile_header.dart';
import 'components/profile_info_list_item.dart';

class ProfilePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(children: [
            // Header
            ProfileHeader(
              imageUrl: "https://randomuser.me/api/portraits/thumb/men/52.jpg",
              name: "Munashif Muhsin",
              registeredDate: DateTime.now(),
            ),

            // Info Items
            ProfileInfoListItem(
              label: "Your email",
              initialValue: "muhsin@email.com",
            ),
            ProfileInfoListItem(
              label: "Your password",
              initialValue: "muhsin@email.com",
              isObscured: true,
            ),
            ProfileInfoListItem(
              label: "Your phone",
              initialValue: "+911234567890",
            ),
            ProfileInfoListItem(
              label: "city, state",
              initialValue: "San Francisco, CA",
            ),
            ProfileInfoListItem(
              label: "country",
              initialValue: "USA",
            ),
          ]),
        ),
      ),
    );
  }
}
