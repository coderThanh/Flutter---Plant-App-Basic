import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/app_const_model.dart';
import 'components/navigation_bottom_widget.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: const HomeBody(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      shadowColor: const Color.fromARGB(0, 0, 0, 0),
      backgroundColor: AppConst.primary,
      leading: Container(
        padding: const EdgeInsets.only(left: AppConst.padding),
        child: GestureDetector(
          onTap: (() {}),
          child: SvgPicture.asset(
            AppConst.iconMenu,
          ),
        ),
      ),
    );
  }
}
