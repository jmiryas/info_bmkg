import 'package:flutter/material.dart';

class EarthquakeScreen extends StatelessWidget {
  const EarthquakeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Text("Earthquake"),
      ),
    );
  }
}
