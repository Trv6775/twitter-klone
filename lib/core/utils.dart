import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

String getNameFromEmail(String email) {
  ///What this does is it splits email into two parts
  ///i.e take my email trv6775@gmail.com
  ///it'll be Trv6775 and @gmail.com as second part
  return email.split('@')[0];
}
