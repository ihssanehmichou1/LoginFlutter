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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Widgets'),
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
  var lgController = TextEditingController();
  var pwController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Authentification",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 15,
              ),
              
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Saisir votre login",
                  labelStyle: TextStyle(fontSize: 15),
                  icon: Icon(Icons.person_2_outlined),
                ),
                controller: lgController,
              ),
            ),
            SizedBox(
              height: 15,
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Saisir votre mot de passe",
                  labelStyle: TextStyle(fontSize: 15),
                  icon: Icon(Icons.lock_clock_outlined),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true, 
                controller: pwController,
              ),
            ),
            SizedBox(
              height: 15,
              ),
            ElevatedButton(
              child: const Text("OK"),
              onPressed: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
