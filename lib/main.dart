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
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(widget.title),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Hello World'),
            IconButton(
              onPressed: (){},
            icon:const Icon(Icons.macro_off_sharp),
            color: Colors.red,),
            Container(
              color: Colors.deepOrange,
              padding:const EdgeInsets.all(20.0),
              child: const Text('Hello Container'),
              
            )
          ],
        )
        //  Center(
        //   child:  ElevatedButton.icon(onPressed: (){},
        //    icon: const Icon(
        //     Icons.mail,
        //     color: Colors.red,
        //     size: 50,
        //    ),
        //    label:const Text('MAil me',),
           
        //    )
          // Icon(
          //   Icons.abc,
          //   color: Colors.red,
          //   size: 70.0,
          // )
          //  Image(image: AssetImage('assets/adewale.png')
          // // NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN9X9ALcd0Vk8VdjpD5BUUBAJOiGUJF6p1Hg&s')//
          // ),
        );
  }
}