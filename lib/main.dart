import 'package:flutter/material.dart';
import 'package:flutter_architecture/di/get_it.dart';
import 'package:flutter_architecture/ui/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencyInjection();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Architecture',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
