import 'package:http/http.dart';
import 'dart:convert';

class worker {
  late String location;

  //Constructor

  worker({required this.location}) {
    location = this.location;
  }

  late String temp;
  late String humidity;
  late String air_speed;
  late String description;
  late String main;
  late String icon;

  //method
  Future<void> getData() async {
    try {
      Response response = await get(Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=6c29bbaf3cb38d70da0a83c1d9445c81'));
      Map data = jsonDecode(response.body);


      //Getting Temp,Humidity
      Map temp_data = data['main'];
      String getHumidity = temp_data['humidity'].toString();
      double getTemp = temp_data['temp'] - 273.15;

//Getting air_speed
      Map wind = data['wind'];
      double getAir_speed = wind["speed"] / 0.27777777777778;

      //Getting Description
      List weather_data = data['weather'];
      Map weather_main_data = weather_data[0];
      String getMain_des = weather_main_data['main'];
      String getDesc = weather_main_data["description"];

      //Assigning Values
      temp = getTemp.toString(); //C
      humidity = getHumidity; // %
      air_speed = getAir_speed.toString(); //km/hr
      description = getDesc;
      main = getMain_des;
      icon = weather_main_data["icon"].toString();
    } catch (e) {
      print(e);
      temp = "NA";
      humidity = "NA";
      air_speed = "NA";
      description = "Can't Find Data";
      main = "NA";
      icon = "09d";
    }
  }
}
