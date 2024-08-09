// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // Response response = await get(
    //     'https://www.worldtimeapi.org/api/timezone/Europe/London' );
    Response response = await get(
        Uri.parse('https://www.worldtimeapi.org/api/timezone/Europe/London'));

    Map data = jsonDecode(response.body);
    var datetime = data['datetime'];
    var offset = data['utc_offset'].substring(1,3) ;

    // print(data);
    // print(datetime);
    // print(offset);
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
    // print(offset);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Loading Screen')),
    );
  }
}
