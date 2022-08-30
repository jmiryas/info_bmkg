import 'package:flutter/material.dart';

class EarthquakeDetailItemWidget extends StatelessWidget {
  final String title;
  final String trailing;

  const EarthquakeDetailItemWidget({
    Key? key,
    required this.title,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(trailing),
    );
  }
}
