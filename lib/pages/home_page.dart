import 'package:flutter/material.dart';
import 'package:flutter_provider_example/pages/home_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeController>(
        builder: (context, value, child) {
          int count = value.count;

          return Center(
            child: Text(
              count.toString(),
              style: const TextStyle(fontSize: 30),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<HomeController>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
