import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create New Post',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Submit',
              ))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image.asset(
            'assets/came.png',
            height: 50,
            width: 40,
          ),
        ],
      ),
    );
  }
}
