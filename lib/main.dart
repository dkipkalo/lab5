import 'package:flutter/material.dart';
import 'package:lab4/home_page.dart';
import 'package:lab4/models/post_model.dart';
import 'package:lab4/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    const Text(
      'search',
    ),
    const Text(
      'notifications',
    ),
    const Text(
      'messages',
    ),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.face),
                      Icon(Icons.settings),
                    ],
                  ),
                  const Text("userName"),
                ],
              ),
            ),
            ListTile(
              title: const Text("profile"),
              leading: const Icon(Icons.people),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("theme"),
              leading: const Icon(Icons.message_sharp),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("bookmarks"),
              leading: const Icon(Icons.bookmark),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("lists"),
              leading: const Icon(Icons.list),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("friends"),
              leading: const Icon(Icons.people_alt_rounded),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined, color: Colors.black),
            label: "",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}