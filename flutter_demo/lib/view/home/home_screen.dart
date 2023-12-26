import 'package:flutter/material.dart';
import 'package:flutter_demo/view/login/login_screen.dart';

class ScreenArguments {
  String? title;
  String? message;

  ScreenArguments(this.title, this.message);
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as ScreenArguments?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(args?.message ?? 'First1 Route'),
          onPressed: () async {
            final userName = await Navigator.pushNamed(context, '/login');
            print('The values are: $userName');
          },
        ),
      ),
    );
  }
}
