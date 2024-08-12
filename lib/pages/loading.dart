// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
// import 'package:new_flutter/services/world_time.dart ';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
   
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(0),
            height: 200,
            // color: Colors.cyan,
            child: Card(
              child: Row(
                children: <Widget>[
                  Image.asset('assets/ade.jpg'),
                  Expanded(
                    child: Container(
                    padding: const EdgeInsets.all(2),
                    // color: Colors.red,
                      child: const Column(
                        
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('PAko Buiscuits', style: TextStyle(backgroundColor: Colors.green),),
                          Text('The buiscuit comprises of'),
                          Text('£100')
                        ],
                      ),
                    ),
                  )
                ],
              )
            ),
          ),
      ),
   
    );
  }
}
