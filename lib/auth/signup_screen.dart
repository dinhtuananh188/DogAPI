import 'package:dogapi/auth/auth_service.dart';
import 'package:dogapi/auth/login_screen.dart';
import 'package:dogapi/home_screen.dart';
import 'package:dogapi/widgets/button.dart';
import 'package:dogapi/widgets/textfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _auth = AuthService();

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _name.dispose();
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
              "Đăng Ký",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 50),
            CustomTextField(
              hint: "Nhập Tên",
              label: "Tên",
              controller: _name,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hint: "Nhập Email",
              label: "Email",
              controller: _email,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hint: "Nhập Mật Khẩu",
              label: "Mật Khẩu",
              isPassword: true,
              controller: _password,
            ),
            const SizedBox(height: 30),
            CustomButton(
              label: "Đăng Ký",
              onPressed: _signup,
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Đã có tài khoản? "),
                InkWell(
                  onTap: () => goToLogin(context),
                  child: const Text(
                    "Đăng Nhập",
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

  goToLogin(BuildContext context) => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const LoginScreen()),
  );

  goToHome(BuildContext context) => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomeScreen()),
  );

  _signup() async {
    await _auth.createUserWithEmailAndPassword(_email.text, _password.text);
    goToHome(context); // Navigate to HomeScreen after signup
  }
}
