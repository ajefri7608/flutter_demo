import 'package:flutter/material.dart';
import 'package:flutter_demo/bloc/counter_observer.dart';
import 'package:flutter_demo/bloc/cubit/counter_cubit.dart';

import 'package:flutter_demo/view/home/home_screen.dart';
import 'package:flutter_demo/view/login/login_screen.dart';
import 'package:flutter_demo/view/search/search_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Bloc.observer = const CounterObserver();
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CounterCubit(),
        ),
      ],
      child: MaterialApp(
        home: const HomeScreen(), // becomes the route named '/'
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => const HomeScreen(),
          '/login': (BuildContext context) => const LoginScreen(),
          '/search': (BuildContext context) => const SearchScreen(),
        },
      )));
}
