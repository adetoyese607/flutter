import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url,required this.time});

 Future<void> getTime() async {
    // Response response = await get(
    //     'https://www.worldtimeapi.org/api/timezone/Europe/London' );
    Response response =
        await get(Uri.parse('https://www.worldtimeapi.org/api/timezone/$url'));

    Map data = jsonDecode(response.body);
    var datetime = data['datetime'];
    var offset = data['utc_offset'].substring(1, 3);

    // print(data);
    // print(datetime);
    // print(offset);
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    // set time properties
    time = now.toString();
    // print(now);
    // print(offset);
  }
}


