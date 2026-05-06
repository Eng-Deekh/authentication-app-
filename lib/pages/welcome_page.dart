import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2635B4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon2.png",
                width: 120,
              ),

              const SizedBox(height: 40),

              const Text(
                "Welcome to Authentication App. Securely sign in or create a new account to continue and enjoy a safe, fast, and seamless experience.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.6,
                ),
              ),

              const SizedBox(height: 50),

              CustomButton(
                text: "Get Started",
                backgroundColor: Colors.white,
                textColor: const Color(0xff2635B4),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoginPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}