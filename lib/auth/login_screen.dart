import 'package:dogapi/auth/auth_service.dart';
import 'package:dogapi/auth/signup_screen.dart';
import 'package:dogapi/menu/ListPage.dart';

import 'package:dogapi/widgets/button.dart';
import 'package:dogapi/widgets/textfield.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = AuthService();

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const Spacer(),
            const Text(
              "Đăng Nhập",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 50),
            CustomTextField(
              hint: "Nhập Email",
              label: "Email",
              controller: _email,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hint: "Nhập Mật Khẩu",
              label: "Mật Khẩu",
              controller: _password,
            ),
            const SizedBox(height: 30),
            CustomButton(
              label: "Đăng Nhập",
              onPressed: _login,
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Bạn đã có tài khoản? "),
                InkWell(
                  onTap: () => goToSignup(context),
                  child: const Text(
                    "Đăng Ký",
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }

  goToSignup(BuildContext context) => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SignupScreen()),
  );

  _login() async {
    await _auth.loginUserWithEmailAndPassword(_email.text, _password.text);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}
