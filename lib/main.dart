import 'package:flutter/material.dart';
import 'home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        fontFamily: 'Open 24 Display St',
      ),
    );
  }
}
