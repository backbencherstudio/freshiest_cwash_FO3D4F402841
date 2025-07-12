import 'package:flutter/material.dart';
import 'package:freshiest_cwash_app/src/core/theme/theme_extension/color_pallete.dart';

import '../../../common_widgets/notification_button/notification_button.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(child: Text("History",style: textTheme.headlineSmall,),)
    );
  }
}
