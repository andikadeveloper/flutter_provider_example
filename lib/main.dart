import 'package:flutter/material.dart';
import 'package:flutter_provider_example/pages/home_controller.dart';
import 'package:flutter_provider_example/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider<HomeController>(
        create: (BuildContext context) => HomeController(),
        child: const HomePage(),
      ),
    );
  }
}
