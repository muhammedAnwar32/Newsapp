import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/news_viewer.dart';
import 'package:newsapp/models/articles_model.dart';

class Newslistview extends StatelessWidget {
  List<Articlesmodel> articles;
  Newslistview({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Newsviewer(
          articlemodel: articles[index],
        ),
      );
    }));
  }
}
