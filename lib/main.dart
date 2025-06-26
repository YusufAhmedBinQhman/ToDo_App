import 'package:flutter/material.dart';
import 'package:to_do_app/core/view/screens/home_screen.dart';
import 'package:to_do_app/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        fontFamily: "PlusJakartaSans",
        textTheme: TextTheme(
          bodySmall: TextStyle(fontSize: 12, color: Colors.white),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          // titleSmall: TextStyle(
          //   fontSize: 14,
          //   color: Color(0xffA0A0A0),
          //   decoration: TextDecoration.lineThrough,
          // ),
          titleMedium: TextStyle(fontSize: 16, color: Color(0xff15B86C)),
          titleLarge: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
