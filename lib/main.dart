import 'package:flutter/material.dart';
import 'package:mealapiapp/controllers/home_controller.dart';
import 'package:mealapiapp/views/spalsh_screen/spalsh_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeController()),
      ],
      child: MaterialApp(
        home: SpalshScreen(),
      ),
    );
  }
}
