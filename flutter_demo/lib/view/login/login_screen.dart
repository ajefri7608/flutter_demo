import 'package:flutter/material.dart';
import 'package:flutter_demo/view/home/home_screen.dart';
import 'package:flutter_demo/view/search/search_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const SearchScreen()),
            // );
            Navigator.pop(context, 'test name');
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
