import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Your App Name'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, // Set the background color to grey
      appBar: AppBar(
        backgroundColor:
            Colors.black, // Set the AppBar background color to black
        title: Text(
          widget.title,
          style: const TextStyle(
              color: Colors.white), // Set the text color to white
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const Text(
            //   'Add Your Content',
            //   style: TextStyle(
            //     fontSize: 18, // Increase the font size
            //     fontWeight: FontWeight.bold, // Apply bold font
            //     color: Colors.black, // Set text color to black
            //   ),
            // ),
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: 18, // Increase the font size
                fontWeight: FontWeight.bold, // Apply bold font
                color: Colors.black, // Set text color to black
              ),
            ),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 24, // Increase the font size
                fontWeight: FontWeight.bold, // Apply bold font
                color: Colors.black, // Set text color to black
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
