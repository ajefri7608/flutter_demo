import 'package:flutter/material.dart';
import 'package:flutter_demo/view/home/home_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context, ) => const HomeScreen()),
            );
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
