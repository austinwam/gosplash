import 'package:flutter/material.dart';
import 'package:gosplash/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'gorouter',
      routeInformationProvider: Approuter.getRouter().routeInformationProvider,
      routeInformationParser: Approuter.getRouter().routeInformationParser,
      routerDelegate: Approuter.getRouter().routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
