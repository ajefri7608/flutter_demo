import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/bloc/cubit/counter_cubit.dart';
import 'package:flutter_demo/model/products.dart';
import 'package:flutter_demo/view/login/login_screen.dart';

import '../../services/firestore_service.dart';

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
    Products products;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Column(
        children: [
          BlocBuilder<CounterCubit, int>(
            builder: (context, state) {
              return Text('$state');
            },
          ),
          ElevatedButton(
            child: Text(args?.message ?? 'First1222 Route'),
            onPressed: () => {context.read<CounterCubit>().increment()},
          ),
          ElevatedButton(
            child: const Text('firestore send data'),
            onPressed: () async => {
              products = await loadFakeProductData(),
            },
          ),
        ],
      )),
    );
  }
}
