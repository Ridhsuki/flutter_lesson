import 'package:flutter/material.dart';
import 'package:tugas_3_fetchapi/model/posts.dart';
import 'package:tugas_3_fetchapi/page/detail_page.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.posts});
  final Posts posts;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) {
              return Detailpage(posts: posts);
            }),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              posts.title, style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(posts.body)
          ],
        ),
      ),
    );
  }
}
