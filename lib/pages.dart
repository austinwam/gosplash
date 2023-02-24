import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gosplash/router.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  Future<void> gotohome() async {
    await Future.delayed(const Duration(seconds: 5));
    Approuter.getRouter().go("/home");
  }

  @override
  void initState() {
    gotohome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      body: Center(
        child: MaterialButton(
            child: const Text("get to deTail"),
            onPressed: () {
              context.go("/details");
            }),
      ),
    );
  }
}

class Detailpage extends StatelessWidget {
  const Detailpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("details page"),
      ),
      body: Center(
        child: MaterialButton(
            child: const Text("go to home"),
            onPressed: () {
              context.go('/');
            }),
      ),
    );
  }
}
