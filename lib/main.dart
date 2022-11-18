import 'package:flutter/material.dart';
import 'package:ruchi/screens/onboarding_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.orange,
        )
      ),
      home: const HomeScreen(),
      
    );
    
  }
}