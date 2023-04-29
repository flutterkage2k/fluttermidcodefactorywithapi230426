import 'package:flutter/material.dart';
import 'package:fluttermidcodefactorywithapi230426/common/component/custom_text_form_filed.dart';

void main() {
  runApp(_App());
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              hintText: 'email',
              onChanged: (String value) {},
            ),
            CustomTextFormField(
              hintText: 'password',
              onChanged: (String value) {},
            ),
          ],
        ),
      ),
    );
  }
}
