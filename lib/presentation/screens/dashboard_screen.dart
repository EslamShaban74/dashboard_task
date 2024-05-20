import 'package:flutter/material.dart';

import '../../app/constants.dart';
import '../common/widgets/app_bar_widgets/custom_app_bar.dart';
import '../common/widgets/app_side_menu.dart';
import 'widgets/dashboard_content.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.scaffoldBackground,
        appBar: const CustomAppBar(),
        drawer: const AppSideMenu(),
        body: DashboardContent());
  }
}
