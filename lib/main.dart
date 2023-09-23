import 'package:flutter/material.dart';
import 'package:twitter_klone/features/auth/views/login_view.dart';
import 'package:twitter_klone/features/auth/views/sign_up_view.dart';
import 'package:twitter_klone/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: const SignUpView(),
    );
  }
}
