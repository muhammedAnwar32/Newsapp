import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/news_viewer.dart';
import 'package:newsapp/models/articles_model.dart';
import 'package:newsapp/services/news_services.dart';

class Newslistview extends StatefulWidget {
  const Newslistview({
    super.key,
  });

  @override
  State<Newslistview> createState() => _NewslistviewState();
}

class _NewslistviewState extends State<Newslistview> {
  List<Articlesmodel> articles = [];
  bool isloading = true;
  @override
  void initState() {
    genralnews();
    super.initState();
  }

  Future<void> genralnews() async {
    articles = await Newservices().getnews(catrgory: 'q');
    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : SliverList(
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
