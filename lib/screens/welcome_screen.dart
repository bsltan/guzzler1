import 'package:flutter/material.dart';
import 'package:guzzler/provider/auth_provider.dart';
import 'package:guzzler/screens/home_screen.dart';
import 'package:guzzler/screens/register_screen.dart';
import 'package:guzzler/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/welcome.png",
            height: 300,
          ),
          const SizedBox(height: 20),
          const Text(
            "FAST DISPATCH",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Let the drinks come to you!",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black38,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          //custom button
          SizedBox(
            width: double.infinity,
            height: 50,
            child: CustomButton(
              onPressed: () {
                ap.isSignedIn ==
                        true // when true, then fetch shared preferences
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()))
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
              },
              text: "Get Started",
            ),
          )
        ],
      ),
    ))) //
        );
  }
}
