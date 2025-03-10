import 'package:flutter/material.dart';
import 'package:tugas_3_fetchapi/model/posts.dart';

class Detailpage extends StatelessWidget {
  final Posts posts;
  const Detailpage({super.key, required this.posts});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('id: ${posts.id}'),
            Text('title: ${posts.title}'),
            SizedBox(height: 21),
            Text('Body: '),
            Text(posts.body),
          ],
        ),
      ),
    );
  }
}
