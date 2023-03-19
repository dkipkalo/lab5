import 'package:flutter/material.dart';
import 'package:lab4/models/post_model.dart';
import 'img_page.dart';

class Post extends StatelessWidget {
  const Post({Key? key, required this.postModel}) : super(key: key);

  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          SizedBox(
            width: MediaQuery.of(context).size.width - 102,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      postModel.userName,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      postModel.userNickName,
                      style: const TextStyle(
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
                  child: Text(
                      "У верхньому Row ви використали контейнер кольору бекграунду - правильний підхід, але краще у цьому випадку використати SizedBox, бо він прозорий і підійде під будь яку тему. Також у невидимої іконки не задано size, тому центральний елемент не вирівнявся по центру"),
                ),
                const SizedBox(height: 5),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ImgPage(postModel: postModel),
                    ),
                  ),
                  child: postModel.postImage != null
                      ? SizedBox(
                          child: Hero(
                            tag: '${postModel.postImage} ${postModel.userName}',
                            child: Image.network(postModel.postImage!),
                          ),
                        )
                      : const SizedBox(),
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
          ),
        ],
      ),
    );
  }
}
