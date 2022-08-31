import 'package:flutter/material.dart';

import '../widgets/app_drawer_widget.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
      ),
      drawer: const AppDrawerWidget(),
    );
  }
}
