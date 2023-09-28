import 'package:facbook_home_screen_design/Home/post_costum_react.dart';
import 'package:flutter/material.dart';
class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 25,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Text("Owner",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: [
                      Text("3h",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 3,),
                      Icon(Icons.public, color: Colors.grey,)
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 20,),
          const Text("My Post",
            style: TextStyle(
                color: Colors.black,
                fontSize: 28,
            ),
          ),
          const SizedBox(height: 25,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("100",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 8,),
                  Image(image:
                  AssetImage("assets/like.jpg"),
                    width: 40,
                  ),
                ],
              ),
              Text("100 Comments",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              React(title: "Like", image: "assets/singleLike.jpg"),
              React(title: "Comment", image: "assets/comment.jpg"),
              React(title: "Share", image: "assets/share.png"),
            ],
          ),
          const SizedBox(height: 20,),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
        ],
      ),
    );
  }
}
