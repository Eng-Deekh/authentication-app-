import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import 'login_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  Future<void> signOut(BuildContext context) async {

    await FirebaseAuth.instance.signOut();

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (_) => const LoginPage(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {

    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 30),

              const Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 60),

              Center(
                child: Column(
                  children: [

                    Image.asset(
                      "assets/icon1.png",
                      width: 100,
                    ),

                    const SizedBox(height: 30),

                    Text(
                      user?.email ?? "No Email",
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              CustomButton(
                text: "Sign Out",
                backgroundColor: const Color(0xff2635B4),
                textColor: Colors.white,
                onPressed: () => signOut(context),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}