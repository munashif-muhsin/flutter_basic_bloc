import 'package:flutter/material.dart';

import '../components/profile_header.dart';
import '../components/profile_info_list_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: const [
          // Header
          ProfileHeader(),

          // Info Items
          ProfileInfoListItem(
            label: "Your email",
            value: "muhsin@email.com",
          ),
          ProfileInfoListItem(
            label: "Your password",
            value: "muhsin@email.com",
          ),
          ProfileInfoListItem(
            label: "Your phone",
            value: "+911234567890",
          ),
          ProfileInfoListItem(
            label: "city, state",
            value: "San Francisco, CA",
          ),
          ProfileInfoListItem(
            label: "country",
            value: "USA",
          ),
        ]),
      ),
    );
  }
}
