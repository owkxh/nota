import 'package:flutter/material.dart';


final Map<String, WidgetBuilder> routes = {
  // SplashScreen.routeName: (context) => SplashScreen(),
};

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
