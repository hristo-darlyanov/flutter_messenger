import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_messenger/components/my_button.dart';
import 'package:flutter_messenger/components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signUp() {}

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
                "You can register here",
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
              MyTextField(
                controller: confirmPasswordController,
                hintText: "Confirm password",
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              MyButton(onTap: signUp, text: "Sign up"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already a member?",
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
                      "Log in",
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
