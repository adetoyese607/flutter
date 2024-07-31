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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          // titleTextStyle: Colors.white,
          title: const Text(
            'Ninja ID Card',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: const Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/ade.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey,
              ),
              Text(
                'NAME',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(height: 10.0,),
              Text(
                'Samson',
                style: TextStyle(color: Colors.amberAccent, letterSpacing: 2.0,
                fontSize: 29,
                fontWeight: FontWeight.bold),
              ),
               SizedBox(
                height: 30.0,
              ),
               Text(
                'CURRET NINJA LEVEL',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '8',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 29,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'adetoyesesamson@gmail.com',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      letterSpacing: 1.0,
                    ),
                  )
                ],
              )
            ],
          ),
        )  
        );
  }
}
