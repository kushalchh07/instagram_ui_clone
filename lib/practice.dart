import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> storyImages = [
      "images/p1.jpg",
      "images/p2.jpg",
      "images/p3.jpg",
      "images/p4.jpg",
      "images/p5.jpg",
      "images/p1.jpg",
      "images/p2.jpg",
      "images/p3.jpg",
      "images/p4.jpg",
      "images/p5.jpg",
    ];
    List<String> posts = [
      "images/post1.jpg",
      "images/post2.jpg",
      "images/post3.jpg",
      "images/post4.jpg",
      "images/post5.jpg",
      "images/post6.jpg",
    ];
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset("assets/images/title.png", height: 40),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.messenger_outline_rounded)),
          ],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      10,
                      (index) => Container(
                          padding: const EdgeInsets.all(9),
                          child: Column(
                            children: [
                              CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      const AssetImage("images/story.png"),
                                  child: CircleAvatar(
                                    radius: 32,
                                    backgroundImage:
                                        AssetImage(storyImages[index]),
                                  )),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text("Name",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black))
                            ],
                          )))),
            ),
            Container(
              width: size.width,
              height: size.height * 0.004,
              color: Colors.grey.shade300,
            ),
            SizedBox(height: 8),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    children: List.generate(
                        6,
                        (index) => Padding(
                              padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.all(5),
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage:
                                                AssetImage(storyImages[index]),
                                          )),
                                      const SizedBox(width: 10),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Nikola Tesla",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          Text("30 min ago",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w100)),
                                        ],
                                      ),
                                      const Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.more_vert))
                                    ],
                                  ),
                                  Card(
                                      elevation: 10,
                                      child: Container(
                                          height: size.height * 0.45,
                                          width: size.width * 0.9,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            child: Image(
                                              image: AssetImage(posts[index]),
                                              fit: BoxFit.cover,
                                            ),
                                          ))),
                                  const SizedBox(height: 8),
                                  const Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundImage:
                                            AssetImage("images/p3.jpg"),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "liked by ",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "Albert Einstein ",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "and 299 others",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                      "Good morning with beautiful Flowers",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)),
                                  const Text("View all 20 comments",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w100)),
                                  const Text("amy_adams Very nice",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ))),
              ),
            )
          ],
        ));
  }
}
