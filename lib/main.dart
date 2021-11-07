import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn2/providers/counter_provider.dart';
import 'package:provider_learn2/providers/shopping_cart.dart';
import 'package:provider_learn2/screens/second_screen.dart';
import '../screens/my_first_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCart()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyFirstScreen(),
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}
