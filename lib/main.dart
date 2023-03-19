import 'package:flutter/material.dart';
import 'package:lab4/models/post_model.dart';
import 'package:lab4/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10, bottom: 25, left: 0, right: 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          // Scaffold.of(context).openDrawer();
                        },
                        child: const Icon(
                          Icons.insert_emoticon_rounded,
                          size: 30,
                          color: Colors.blue,
                        ),
                      ),
                      const Icon(
                        Icons.cake,
                        size: 30,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 30),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey),
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          "Для вас",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Вы читаете",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Post(
                    postModel: PostModel(
                      userName: "user1",
                      userNickName: "@user1",
                      postImage:
                          "https://volyn.tabloyid.com/upload/news/1/2018-08/15336776871/t_1_koti-1.jpg",
                    ),
                  ),
                  Post(
                    postModel: PostModel(
                      userName: "user2",
                      userNickName: "@user1",
                      postImage:
                          "https://volyn.tabloyid.com/upload/news/1/2018-08/15336776871/t_1_koti-1.jpg",
                    ),
                  ),
                  Post(
                    postModel: PostModel(
                      userName: "user3",
                      userNickName: "@user1",
                      postImage:
                          "https://volyn.tabloyid.com/upload/news/1/2018-08/15336776871/t_1_koti-1.jpg",
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.ac_unit_rounded,
                            color: Colors.blue,
                            size: 60,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Username",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  "@usernackname",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  "51min",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.more_vert,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 250,
                              child: Text(
                                  "У верхньому Row ви використали контейнер кольору бекграунду - правильний підхід, але краще у цьому випадку використати SizedBox, бо він прозорий і підійде під будь яку тему. Також у невидимої іконки не задано size, тому центральний елемент не вирівнявся по центру"),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              height: 135,
                              width: 250,
                              child: Image.network(
                                  "https://volyn.tabloyid.com/upload/news/1/2018-08/15336776871/t_1_koti-1.jpg"),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.comment,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                                const Text("15"),
                                const SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.replay,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                                const Text("25"),
                                const SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.heart_broken,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                                const Text("328"),
                                const SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.calendar_view_week_rounded,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                                const Text("34354"),
                                const SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.assignment,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
