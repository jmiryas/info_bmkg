import 'package:flutter/material.dart';

class AppDrawerWidget extends StatelessWidget {
  const AppDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(
              Icons.info,
              color: Color(0xFFFAF9F9),
            ),
            title: const Text(
              "Tentang Aplikasi",
              style: TextStyle(
                color: Color(0xFFFAF9F9),
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.palette,
              color: Color(0xFFFAF9F9),
            ),
            title: const Text(
              "Tema",
              style: TextStyle(
                color: Color(0xFFFAF9F9),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
