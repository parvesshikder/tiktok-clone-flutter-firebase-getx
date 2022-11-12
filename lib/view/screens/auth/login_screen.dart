import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/text_input_field.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tiktok Clone',
              style: boldTextStyle,
            ),
            sizedBox10pxH,
            const Text(
              'Log In',
              style: normalTextStyle,
            ),
            sizedBox20pxH,
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _emailController,
                icon: Icons.email,
                labelText: const Text('Email'),
              ),
            ),
            sizedBox10pxH,
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _passwordController,
                icon: Icons.password,
                labelText: const Text('Password'),
                obcText: true,
              ),
            ),
            sizedBox20pxH,
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.red[500],
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    print('Log In');
                  },
                  child: const Text(
                    'Log In',
                    style: normalTextStyle,
                  ),
                ),
              ),
            ),
            sizedBox10pxH,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account'),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    print('Register');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.red[500], fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
