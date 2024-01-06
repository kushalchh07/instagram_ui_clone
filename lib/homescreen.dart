import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

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
      "images/p6.jpg",
      "images/p7.jpg",
      "images/p8.jpg",
      "images/p9.jpg",
    ];
    List<String> posts = [
      "images/post1.jpg",
      "images/post2.jpg",
      "images/post3.jpg",
      "images/post4.jpg",
      "images/post5.jpg",
      "images/post6.jpg",
    ];
    List<String> storyName = [
      "Your Story",
      "Sagar",
      "Mukesh",
      "Prashant",
      "Sabin",
      "Saroz",
      "Nischal",
      "Cristiano",
      "Laure",
    ];
    List<String> likedName = [
      "Sabin",
      "Sagar",
      "Mukesh",
      "Prashant",
      "Nischal",
      "Saroz",
      "Cristiano",
      "Laure",
    ];
    List<String> likedImages = [
      "images/p5.jpg",
      "images/p2.jpg",
      "images/p3.jpg",
      "images/p4.jpg",
      "images/p7.jpg",
      "images/p6.jpg",
      "images/p8.jpg",
      "images/p9.jpg",
    ];
    List<String> postName = [
      "Nischal",
      "Saroz",
      "Cristiano",
      "Laure",
      "Sabin",
      "Sagar",
      "Mukesh",
      "Prashant",
    ];
    List<String> postImages = [
      "images/p7.jpg",
      "images/p6.jpg",
      "images/p8.jpg",
      "images/p9.jpg",
      "images/p5.jpg",
      "images/p2.jpg",
      "images/p3.jpg",
      "images/p4.jpg",
    ];
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("assets/images/title.png", height: 40),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
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
                    9,
                    (index) => Container(
                        padding: EdgeInsets.all(9),
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage("images/story.png"),
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundImage:
                                      AssetImage(storyImages[index]),
                                )),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(storyName[index],
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black))
                          ],
                        )))),
          ),
          Container(
            width: size.width * 1,
            height: size.height * 0.0004,
            color: Colors.grey.shade300,
          ),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(
                  6,
                  (index) => Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage(postImages[index]),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(postName[index],
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Text("30 min ago",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w100))
                                  ],
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert))
                              ],
                            ),
                            Card(
                              elevation: 10,
                              child: Container(
                                height: size.height * 0.45,
                                width: size.height * 0.9,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image(
                                    image: AssetImage(posts[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesomeIcons.heart)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesomeIcons.comment)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesomeIcons.paperPlane)),
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesomeIcons.bookmark))
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage:
                                        AssetImage(likedImages[index]),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "is liked by ",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w100),
                                ),
                                Text(
                                  likedName[index],
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " and 299 other.",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text("Good morning with beautiful Flowers",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text("View all 20 comments",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w100)),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text("amy_adams Very nice",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 20),
                          ],
                        ),
                      )),
            ),
          ))
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: size.height * 0.09,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_box)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
              IconButton(onPressed: () {}, icon: Icon(Icons.account_box)),
            ],
          ),
        ),
      ),
    );
  }
}
