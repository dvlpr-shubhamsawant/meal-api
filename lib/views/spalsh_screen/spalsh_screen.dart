import 'package:flutter/material.dart';
import 'package:mealapiapp/controllers/home_controller.dart';
import 'package:mealapiapp/views/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

late HomeController controller;

changeScreen(context) {
  Future.delayed(Duration.zero, () async {
    await controller.fetchMealCategories();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => HomeScreen()));
  });
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeScreen(context);
    controller = Provider.of<HomeController>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          strokeWidth: 3,
        ),
      ),
    );
  }
}
