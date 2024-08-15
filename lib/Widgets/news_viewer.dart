import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/web_view.dart';
import 'package:newsapp/models/articles_model.dart';

class Newsviewer extends StatelessWidget {
  const Newsviewer({super.key, required this.articlemodel});
  final Articlesmodel articlemodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return PostView(
              url: articlemodel.url ?? 'data error',
            );
          }),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              articlemodel.image ??
                  'https://img.freepik.com/free-vector/gradient-breaking-news-logo-design_23-2151180705.jpg?size=626&ext=jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articlemodel.title,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis),
            maxLines: 2,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articlemodel.subtitle ?? '',
            style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
