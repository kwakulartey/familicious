import 'package:familicious/contact_view.dart';
import 'package:familicious/favourite_view.dart';
import 'package:familicious/home_view.dart';
import 'package:familicious/message_view.dart';
import 'package:flutter/material.dart';

class IndexView extends StatefulWidget {
  const IndexView({Key? key}) : super(key: key);

  @override
  _IndexViewState createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [HomeView(), MessageView(), FavouriteView(), ContactView()],
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState((() {
            _currentIndex = index;
          }));
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.timelapse_rounded), label: 'Timeline'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Contact')
        ],
      ),
    );
  }
}
