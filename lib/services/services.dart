

import 'dart:convert';

import '../model/newsmodel.dart';
import 'package:http/http.dart' as http;

class Services_new {
  String apiKey = "ff07382cc1f84dc4870f8ed0d3def8b7";

  Future<List<Articles>?> fetchbusiness() async {
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=ff07382cc1f84dc4870f8ed0d3def8b7"));

    if (response.statusCode == 200) {
      final jsonNew = jsonDecode(response.body);

      final newArt = Newsmodel.fromJson(jsonNew);
      print(newArt.articles);
      return newArt.articles;
    }
    return null;
  }

  Future<List<Articles>?> fetchentertainment() async {
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=eg&category=entertainment&apiKey=ff07382cc1f84dc4870f8ed0d3def8b7"));

    if (response.statusCode == 200) {
      final jsonNew = jsonDecode(response.body);

      final newArt = Newsmodel.fromJson(jsonNew);
      print(newArt.articles);
      return newArt.articles;
    }
    return null;
  }

  Future<List<Articles>?> fetchgeneral() async {
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=eg&category=general&apiKey=ff07382cc1f84dc4870f8ed0d3def8b7"));

    if (response.statusCode == 200) {
      final jsonNew = jsonDecode(response.body);

      final newArt = Newsmodel.fromJson(jsonNew);
      print(newArt.articles);
      return newArt.articles;
    }
    return null;
  }

  Future<List<Articles>?> fetchhealth() async {
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=eg&category=health&apiKey=ff07382cc1f84dc4870f8ed0d3def8b7"));

    if (response.statusCode == 200) {
      final jsonNew = jsonDecode(response.body);

      final newArt = Newsmodel.fromJson(jsonNew);
      print(newArt.articles);
      return newArt.articles;
    }
    return null;
  }

  Future<List<Articles>?> fetchscience() async {
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=eg&category=science&apiKey=ff07382cc1f84dc4870f8ed0d3def8b7"));

    if (response.statusCode == 200) {
      final jsonNew = jsonDecode(response.body);

      final newArt = Newsmodel.fromJson(jsonNew);
      print(newArt.articles);
      return newArt.articles;
    }
    return null;
  }

  Future<List<Articles>?> fetchsport() async {
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=eg&category=sport&apiKey=ff07382cc1f84dc4870f8ed0d3def8b7"));

    if (response.statusCode == 200) {
      final jsonNew = jsonDecode(response.body);

      final newArt = Newsmodel.fromJson(jsonNew);
      print(newArt.articles);
      return newArt.articles;
    }
    return null;
  }
  Future<List<Articles>?> fetchtechnology() async {
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=eg&category=technology&apiKey=ff07382cc1f84dc4870f8ed0d3def8b7"));

    if (response.statusCode == 200) {
      final jsonNew = jsonDecode(response.body);

      final newArt = Newsmodel.fromJson(jsonNew);
      print(newArt.articles);
      return newArt.articles;
    }
    return null;
  }
}