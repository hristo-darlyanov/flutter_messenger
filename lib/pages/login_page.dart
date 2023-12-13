import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_messenger/components/my_button.dart';
import 'package:flutter_messenger/components/my_text_field.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(
                Icons.message,
                size: 120,
                color: Color.fromARGB(255, 95, 25, 25),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Welcome back you've been missed",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 40,
              ),
              MyTextField(
                controller: emailController,
                hintText: "Enter email",
                obscureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: passwordController,
                hintText: "Enter password",
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(onTap: () {}, text: "Sign in"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Not a member?",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Register now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
