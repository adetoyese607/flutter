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
    home:const MyHomePage(title: 'Product LAyout'),
     
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
      body: ListView(
        // children: <Widget>[
        //   ProductBox(
        //     name: 'iPhone',
        //     description: 
        //   )
        // ],
      )
    );
  }
}

class ProductBox extends StatefulWidget {
  const ProductBox({super.key});
  
  @override
  State<StatefulWidget> createState() {
  }
  final String name


  
}
