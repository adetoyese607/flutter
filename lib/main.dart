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
  // for awesome quotes
  List<String> quotes = [
    'God first, Work H=Smart, Success is Sure',
    'With God, All things are possible',
    'God bless me and mk his face shie upon me'
  ];

  // for Ninja ID card
  // int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          // titleTextStyle: Colors.white,
          // title: const Text(
          //   'Ninja ID Card',
          //   style: TextStyle(color: Colors.white),
          // ),
          title: const Text(
            'Awesome Quotes',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 0,
        ),

        // AWESOME QUOTE BODY
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: quotes.map((quote) {
          return Text(quote);
        }).toList()
        )

        // NINJA ID CARD

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {
        //       ninjaLevel += 1;
        //     });
        //   },
        //   backgroundColor: Colors.grey[850],
        //   child: const Icon(Icons.add, color: Colors.white),
        // ),

        // body: Padding(
        //   padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: <Widget>[
        //       const Center(
        //         child: CircleAvatar(
        //           backgroundImage: AssetImage('assets/ade.jpg'),
        //           radius: 40,
        //         ),
        //       ),
        //       const Divider(
        //         height: 60,
        //         color: Color.fromARGB(160, 158, 158, 158),
        //       ),
        //       const Text(
        //         'NAME',
        //         style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
        //       ),
        //       const SizedBox(
        //         height: 10.0,
        //       ),
        //       const Text(
        //         'Samson',
        //         style: TextStyle(
        //             color: Colors.amberAccent,
        //             letterSpacing: 2.0,
        //             fontSize: 29,
        //             fontWeight: FontWeight.bold),
        //       ),
        //       const SizedBox(
        //         height: 30.0,
        //       ),
        //       const Text(
        //         'CURRET NINJA LEVEL',
        //         style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
        //       ),
        //       const SizedBox(
        //         height: 10.0,
        //       ),
        //       Text(
        //         '$ninjaLevel',
        //         style: const TextStyle(
        //             color: Colors.amberAccent,
        //             letterSpacing: 2.0,
        //             fontSize: 29,
        //             fontWeight: FontWeight.bold),
        //       ),
        //       const SizedBox(
        //         height: 30.0,
        //       ),
        //       const Row(
        //         children: <Widget>[
        //           Icon(
        //             Icons.email,
        //             color: Colors.grey,
        //           ),
        //           SizedBox(width: 10),
        //           Text(
        //             'adetoyesesamson@gmail.com',
        //             style: TextStyle(
        //               color: Colors.grey,
        //               fontSize: 18,
        //               letterSpacing: 1.0,
        //             ),
        //           )
        //         ],
        //       )
        //     ],
        //   ),
        // )
        );
  }
}
