import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_klone/common/common.dart';
import 'package:twitter_klone/common/error_page.dart';
import 'package:twitter_klone/features/auth/controller/auth_controller.dart';
import 'package:twitter_klone/features/auth/views/sign_up_view.dart';
import 'package:twitter_klone/features/home/views/home_view.dart';
import 'package:twitter_klone/theme/theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: ref.watch(currentUserAccountProvider).when(
            data: (user) {
              if (user != null) {
                // print(user.email);
                return const HomeView();
              }
              return const SignUpView();
            },
            error: (error, stackTrace) => ErrorPage(
              error: error.toString(),
            ),
            loading: () => const LoadingPage(),
          ),
    );
  }
}
