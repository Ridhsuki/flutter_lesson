import 'package:flutter/material.dart';

class LikeState extends StatefulWidget {
  const LikeState({super.key});

  @override
  State<LikeState> createState() => _LikeStateState();
}

class _LikeStateState extends State<LikeState> {
  bool isLiked = false;

  void liked() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text('Like'),
        centerTitle: true,
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            liked();
          },
          icon: Icon(Icons.favorite,
              color: isLiked ? Colors.red : Colors.grey, size: 100),
        ),
      ),
    );
  }
}
