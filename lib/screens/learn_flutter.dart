import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),

      // body code

      body: Column(
        children: [
          Image.asset("images/LearnVector.jpg"),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            color: Colors.lightGreen,
            width: double.infinity,
            child: const Center(
              child: Text('Fuck you!',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text(
                'Elevated Button',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )),
          OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text(
                'Outlined Button',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )),

          const SizedBox(
            height: 20,
          ),

          // ROW

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.local_fire_department,
                color: Colors.green,
              ),
              Text(
                'Absar is on fire!',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.local_fire_department,
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}
