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
             
            ],
          ),
        )

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: <Widget>[
        //     const Expanded(
        //       flex: 2,
        //       child: Image(image: AssetImage('assets/ade.jpg'))
        //     ),
        //    Expanded(
        //     flex: 1,
        //      child: Container(
        //       // margin:const EdgeInsets.only(right: 50),
        //       padding:const EdgeInsets.all(30.0),
        //       color: Colors.amber,
        //       child: const Text('ON'),
        //      ),
        //    ),
        //    Expanded(
        //       flex: 1,
        //       child: Container(
        //         padding: const EdgeInsets.all(30.0),
        //           color: Colors.green,
        //       child: const Text('two'),
        //                  ),
        //     ),
        //     Expanded(
        //     flex: 1,
        //      child: Container(
        //         padding: const EdgeInsets.all(30.0),
        //         color: Colors.red,
        //         child: const Text('three'),
        //       ),
        //    ),
        //   ],
        // )
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
