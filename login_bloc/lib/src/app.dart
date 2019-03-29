import 'package:flutter/material.dart';
import './screens/login_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Log me in',
      home: Scaffold(
        body: SafeArea(
          child: LoginScreen(),
        ),
      ),
    );
  }
}
