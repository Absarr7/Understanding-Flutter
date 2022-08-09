import 'package:flutter/material.dart';
import 'package:practice_app/learn_flutter.dart';
import 'package:practice_app/login.dart';
import 'package:practice_app/utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const LearnFlutter();
                    },
                  ),
                );
              },
              style: TextButton.styleFrom(minimumSize: const Size(300, 50)),
              child: const Text('Learn Flutter'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              style: TextButton.styleFrom(minimumSize: const Size(300, 50)),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
