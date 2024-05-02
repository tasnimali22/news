import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customcard extends StatelessWidget{

  final String title;
  final String description;
  final String urlToImage;
  final String author;
  //final String url;
  final String publishedAt;
  final String content;

  const Customcard({super.key,
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.author,
    required this.publishedAt,
    required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,height: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        border: Border.all(width: 1.0),
        color: Color(0xFFFAF0E6),
      ),
      child: Column(children: [
        Text(title??""),
        Text(description??""),
        Text(urlToImage??""),
        Text(author??""),
       // Text(url??""),
        Text(publishedAt??""),
        Text(content??""),
      ],),
    );
  }

}