import 'package:flutter/material.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';

import '../../../common_widgets/notification_button/notification_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(child: Text("Profile",style: textTheme.headlineSmall,),)
    );
  }
}
