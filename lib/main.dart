import 'package:e_commoice_flutting_frontend/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EShop());
}

class EShop extends StatelessWidget {
  const EShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
