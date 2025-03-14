import 'package:flutter/material.dart';
import 'package:tugas_3_fetchapi/model/posts.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:tugas_3_fetchapi/widget/post_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Posts>> fetchPosts() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var getPostsData = json.decode(response.body) as List;
      var listPosts = getPostsData.map((i) => Posts.fromJson(i)).toList();
      return listPosts;
    } else {
      throw Exception('Failed to load Posts');
    }
  }

  late Future<List<Posts>> futurePosts;

  @override
  void initState() {
    super.initState();
    futurePosts = fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Post List'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: FutureBuilder<List<Posts>>(
            future: futurePosts,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                  itemBuilder: ((context, index) {
                    var post = (snapshot.data as List<Posts>)[index];
                    return Column(
                      children: [
                        PostCard(
                          posts: Posts(
                            id: post.id,
                            title: post.title,
                            body: post.body,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    );
                  }),
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: (snapshot.data as List<Posts>).length,
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return Center(child: const CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
