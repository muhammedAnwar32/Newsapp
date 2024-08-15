import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/news_list_view.dart';
import 'package:newsapp/models/articles_model.dart';

import 'package:newsapp/services/news_services.dart';

class NewsListBulider extends StatefulWidget {
  const NewsListBulider({super.key, required this.category});
  final String category;
  @override
  State<NewsListBulider> createState() => _NewsListBuliderState();
}

class _NewsListBuliderState extends State<NewsListBulider> {
  dynamic future;
  @override
  void initState() {
    future = Newservices().getnews(catrgory: widget.category);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlesmodel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Newslistview(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child:
                  Center(child: Text('oops there was an error: try later...')),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
