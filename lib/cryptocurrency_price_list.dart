import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Provides the Future class
//Provides the json variable we will use to decode the JSON string response.
//Provides the function we will use to make HTTP GET requests.

void main() async {
  // Testing the getCurrencies function
  // We wait for the currency data to arrive
  List currencies = await getCurrencies();
  // Before printing it to the Console
  print(currencies);

  runApp(new MaterialApp());
}

Future<List> getCurrencies() async {
  //getCurrencies() function will return a List sometime in the future.
  String apiUrl = 'https://api.coinmarketcap.com/v1/ticker/?limit=50';
  // Make a HTTP GET request to the CoinMarketCap API.
  // Await basically pauses execution until the get() function returns a Response
  http.Response response = await http.get(apiUrl);
  // Using the JSON class to decode the JSON String
  return json.decode(response.body);
}
