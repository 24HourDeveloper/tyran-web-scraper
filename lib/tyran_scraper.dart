import 'dart:convert'; // Contains the JSON encoder
import 'package:http/http.dart'; // Contains a client for making API calls
import 'package:html/parser.dart'; // Contains HTML parsers to generate a Document object
import 'package:html/dom.dart'; // Contains DOM related classes for extracting data from elements

initiate() async {
  var client = Client();
  var response = await client.get('https://tyrannosaurustech.com/');

  // Use html parser and query selector
  var document = parse(response.body);
  var logo = document.querySelector('.logo-mobile a img').attributes;
  var video = document.querySelector('video source').attributes;

  var scrapedValues = Map();
  scrapedValues['logo'] = logo;
  scrapedValues['video'] = video;
  return scrapedValues;
}
