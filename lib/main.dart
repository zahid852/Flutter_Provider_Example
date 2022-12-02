import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_simple_example/count_screen.dart';
import 'package:provider_simple_example/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (ctx) => countProvider(),
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: countScreen(),
        ));
  }
}
