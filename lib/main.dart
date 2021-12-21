import 'package:familicious/home_view.dart';
import 'package:familicious/index_view.dart';
import 'package:flutter/material.dart';
import 'package:familicious/auth/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.white),
              elevation: 0,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              )),
          iconTheme: const IconThemeData(color: Colors.black),
          scaffoldBackgroundColor: const Color.fromRGBO(240, 251, 252, 1),
          cardColor: Colors.white,
          textTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.black),
              bodyText2: TextStyle(color: Colors.black)),
          inputDecorationTheme: const InputDecorationTheme(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black))),
          buttonTheme: const ButtonThemeData(
              colorScheme: ColorScheme.dark(primary: Colors.white),
              textTheme: ButtonTextTheme.primary)),
      darkTheme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.white),
              elevation: 0,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              )),
          iconTheme: const IconThemeData(color: Colors.white),
          scaffoldBackgroundColor: Colors.black,
          cardColor: Colors.grey.shade900,
          textTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white)),
          inputDecorationTheme: const InputDecorationTheme(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70))),
          buttonTheme: const ButtonThemeData(
              colorScheme: ColorScheme.dark(primary: Colors.white70),
              textTheme: ButtonTextTheme.primary)),
      themeMode: ThemeMode.system,
      home: const LoginView(),
    );
  }
}
