import 'package:flutter/material.dart';
import 'package:new_app/Compo/News_Card/NewsCardWidget.dart';

class NewsCard {
  final String title;
  final String imageUrl;

  NewsCard({required this.title, required this.imageUrl});
}

class NewsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var news;
    return Scaffold(
      
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: news.length,
        itemBuilder: (context, index) {
          return NewsCardWidget(
            newsCard: news[index], News_Card: null,
          );
        },
      ),
    );
  }
}

