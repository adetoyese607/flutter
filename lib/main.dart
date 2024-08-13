import 'package:flutter/material.dart';

// import 'package:new_flutter/pages/home.dart';
//
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
      home: const MyHomePage(title: 'Product LAyout'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          // titleTextStyle: Colors.white,
          // title: const Text(
          //   'Ninja ID Card',
          //   style: TextStyle(color: Colors.white),
          // ),
          title: const Text(
            'Product LAyout',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                sshowDialog(context);
              },
              child: const Text('Hello Woeld')),
          // child: GestureDetector(
          //   onTap: () {
          //     sshowDialog(context);

          //   },
          //   child:const Icon(Icons.power_input)
          // ),
        ));
  }
}

void sshowDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Message'),
          content: const Text('HEllo World'),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'))
          ],
        );
      });
}
