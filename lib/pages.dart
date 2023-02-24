import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gosplash/provider.dart';
import 'package:gosplash/router.dart';
import 'package:provider/provider.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  Future<void> gotohome() async {
    var authstate = Provider.of<Appstate>(context, listen: false).authstate;
    await Future.delayed(const Duration(seconds: 4));
    // Approuter.getRouter().go("/login");
    if (authstate == null) {
      Approuter.getRouter().go("/login");
    } else if (authstate == false) {
      Approuter.getRouter().go("/login");
    } else {
      Approuter.getRouter().go("/");
    }
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
              context.go('/splash');
            }),
      ),
    );
  }
}

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
      ),
      body: Center(
        child: MaterialButton(
            child: const Text("login page"),
            onPressed: () {
              Provider.of<Appstate>(context, listen: false).changeauth(context);
            }),
      ),
    );
  }
}
