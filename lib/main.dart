import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Widgets')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display an image at the top
            Image.network(
              'https://source.unsplash.com/random/300x200',
              height: 200,
              width: 300,
            ),

            const SizedBox(height: 20),

            // Row with icons and text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, color: Colors.amber, size: 40),
                SizedBox(width: 10),
                Text(
                  'Flutter Widgets',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Elevated Button at the bottom
            ElevatedButton(
              onPressed: () {
                print('Button Pressed!');
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
