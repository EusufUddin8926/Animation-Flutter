import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _isState  = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Animation Demo"), backgroundColor: Colors.blueGrey),
      body: Column(
        children: [
          Center(
            child: AnimatedCrossFade(
                firstChild: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.red,
                  child: Center(
                    child: ElevatedButton(onPressed: () {
                      setState(() {
                        _isState = false;
                      });
                    }, child: Text("Click")),
                  ),
                ),
                secondChild: Center(child: Text("Successfully login.")),
                crossFadeState: _isState?CrossFadeState.showFirst: CrossFadeState.showSecond,
                duration: Duration(seconds: 1)),
          ),
        ]
      ),
    );
  }
}
