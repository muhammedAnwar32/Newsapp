import 'package:flutter/material.dart';

import 'package:newsapp/Widgets/catagory_list_view_accidental.dart';
import 'package:newsapp/Widgets/news_list_bulider.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'news',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              'cloud',
              style: TextStyle(color: Colors.orange, fontSize: 25),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Catagorieslistview(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 25,
              ),
            ),
            // const SliverToBoxAdapter(
            //   child: Newslistview(),
            // ),
            NewsListBulider(
              category: 'general',
            ),
          ],
        ),
        // child: Column(
        //   children: [
        //     Catagorieslistview(),
        //     SizedBox(
        //       height: 25,
        //     ),
        //     Expanded(child: Newslistview())
        //   ],
        // ),
      ),
    );
  }
}
