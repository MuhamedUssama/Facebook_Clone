import 'package:flutter/material.dart';
import 'package:facbook_home_screen_design/Home/post.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 155,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Horizontal scrolling
              itemBuilder: story,
              itemCount: 10, // Number of stories
              padding: const EdgeInsets.all(5),
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Post(),
              scrollDirection: Axis.vertical,
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

Widget story (BuildContext context, int index){
  return Padding(
    padding: const EdgeInsets.only(right: 5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 150,
        child: Stack(
          children: [
            Image.asset(
              "assets/facebookStory.jpg",
              height: 150,
              width: 100,
              fit: BoxFit.cover,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 CircleAvatar(
                   radius: 17,
                   backgroundColor: Colors.blue,
                   child: Icon(
                     Icons.person,
                     color: Colors.white,
                     size: 20,
                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.only(left: 22),
                   child: Text("Owner",
                    style: TextStyle
                      (
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                ),
                 ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

