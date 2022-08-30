import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screens/main_menu_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Info BMKG",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFFAF9F9),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF488B8F),
          selectedIconTheme: IconThemeData(
            color: Color(0xFFADD2C9),
          ),
          selectedItemColor: Color(0xFFADD2C9),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFF5EA3A3),
          ),
          unselectedItemColor: Color(0xFF5EA3A3),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF222831),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF393E46),
          selectedIconTheme: IconThemeData(
            color: Color(0xFFFFD369),
          ),
          selectedItemColor: Color(0xFFFFD369),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFFEEEEEE),
          ),
          unselectedItemColor: Color(0xFFEEEEEE),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const MainMenuScreen(),
    );
  }
}
