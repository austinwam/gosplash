import 'package:flutter/material.dart';
import 'package:gosplash/provider.dart';
import 'package:gosplash/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // const MyApp());
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Appstate()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
