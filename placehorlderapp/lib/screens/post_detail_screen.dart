import 'package:flutter/material.dart';

class PostDetailScreen extends StatelessWidget {
  final int postId;

  PostDetailScreen({Key? key, required this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalles del Post')),
      body: Center(
        child: Text(
          'ID del Post: $postId',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
