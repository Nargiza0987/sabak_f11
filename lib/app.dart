import 'package:flutter/material.dart';
//import 'package:sabak_f11/home_page.dart';
import 'package:sabak_f11/login_page.dart';

//import 'home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 73, 58, 183)),
        // useMaterial3: true,
      ),
      home: // HomePage(),
          const loginPage(),
    );
  }
}
