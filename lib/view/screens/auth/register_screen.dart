import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/text_input_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

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
              'Register',
              style: normalTextStyle,
            ),
            sizedBox20pxH,
            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  child: Icon(Icons.account_circle,size: 120,),
                ),
                Positioned(
                  
                  left: 78,
                  top: 75,
                  child: IconButton(onPressed: (){
                    authController.pickUserProfile();
                  }, icon: const Icon(Icons.photo_library, color: Colors.red,)),
                  
                  ),
              ],
            ),
            sizedBox10pxH,
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _nameController,
                icon: Icons.person,
                labelText: const Text('Full Name'),
              ),
            ),
            sizedBox10pxH,
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
                    authController.registerUser(name: _nameController.text, email: _emailController.text, password: _passwordController.text, image: authController.profilePicture);
                  },
                  child: const Text(
                    'Register',
                    style: normalTextStyle,
                  ),
                ),
              ),
            ),
            sizedBox10pxH,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Alredy have an account'),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    print('Log In');
                  },
                  child: Text(
                    'Log In',
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
