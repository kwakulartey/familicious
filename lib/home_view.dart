import 'package:familicious/create_post.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Timeline',
        ),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const CreatePost();
                }));
              },
              icon: Icon(
                UniconsLine.plus_square,
                color: Theme.of(context).iconTheme.color,
              )),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            color: Theme.of(context).cardColor,
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2016/11/22/23/44/porsche-1851246_960_720.jpg'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text('Jane Cooper',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                        Text('1 minute ago',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontSize: 12, color: Colors.grey))
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz,
                        color: Theme.of(context).iconTheme.color),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'That was the first time I flew out of Singapore in three years',
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/11/22/23/44/porsche-1851246_960_720.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          UniconsLine.thumbs_up,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          UniconsLine.comment_lines,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ],
                    ),
                    Icon(UniconsLine.telegram_alt,
                        color: Theme.of(context).iconTheme.color),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
