import 'dart:convert';

import 'package:http/http.dart' as http;
import 'model.dart';

void updateList() async  {
    var response = await http.get(
      Uri.parse(
          'www.thecocktaildb.com/api/json/v1/1/search.php?f=a'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },);

    var obj = jsonDecode(response.body);
    print(obj);
  }