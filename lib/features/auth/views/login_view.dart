import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_klone/common/common.dart';
import 'package:twitter_klone/constants/constants.dart';
import 'package:twitter_klone/features/auth/views/sign_up_view.dart';
import 'package:twitter_klone/features/auth/widgets/auth_field.dart';
import 'package:twitter_klone/theme/theme.dart';

class LoginView extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const LoginView(),
      );

  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appBar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              //textfield 1 username/email
              AuthField(
                controller: emailController,
                hintText: 'Email/Username',
              ),
              const SizedBox(
                height: 25,
              ),
              //textfield 2 password
              AuthField(
                controller: passwordController,
                hintText: 'Password',
              ),
              const SizedBox(
                height: 40,
              ),
              //login button
              Align(
                alignment: Alignment.centerRight,
                child: RoundedSmallButton(
                  onTap: () {},
                  label: 'Login',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              //textspan forgot password
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: ' Sign Up',
                      style: const TextStyle(
                        color: Pallete.blueColor,
                        fontSize: 16,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            SignUpView.route(),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
