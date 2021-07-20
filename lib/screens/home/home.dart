import 'package:flutter/material.dart';
import 'package:spotify_app_ayham/components/app_bar.dart';
import 'package:spotify_app_ayham/components/tab_bar.dart';


import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'GOOD MORNING, CODE CRAFTS!'),
      body: Body(),
      bottomNavigationBar: CustomTabBar(),
    );
  }
}
