import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedPost extends StatelessWidget {
  FeedPost(
      {this.personalImagePath = '',
      this.name = '',
      this.readDuration = '',
      this.blogPost = '',
      this.blogImagePath = '',
      this.category = ''});
  String personalImagePath;
  String name;
  String readDuration;
  String blogImagePath;
  String blogPost;
  String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(personalImagePath),
            ),
            title: Text(
              name,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            subtitle: Text(readDuration),
            trailing: Icon(Icons.more_vert),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                child: Text(
                  blogPost,
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 389,
                    height: 250,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                      color: Colors.redAccent,
                      shape: BoxShape.rectangle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(blogImagePath),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12,
                    bottom: 12,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        category,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      width: 109,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Divider(
                  color: Colors.black,
                  indent: 13,
                  endIndent: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
