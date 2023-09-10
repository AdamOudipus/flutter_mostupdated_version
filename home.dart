import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:my_app_three/guotes.dart';
import 'package:my_app_three/library.dart';
import 'package:my_app_three/styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(212, 4, 4, 4),
          width: 200,
          child: ListView(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 25, 0, 0),
                iconColor: const Color.fromARGB(255, 192, 0, 153),
                leading: const Icon(
                  Icons.my_library_books_outlined,
                  size: 40,
                ),
                title: const Text('Quotes',
                    style: TextStyle(
                        color: Color.fromARGB(255, 192, 0, 153), fontSize: 25)),
                onTap: () {
                  // Add your action here
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const Library();
                  }));
                },
              ),
              ListTile(
                iconColor: Colors.white,
                leading: const Icon(
                  Icons.bookmark_added_outlined,
                  size: 30,
                ),
                title: const Text('Library',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {
                  // Add your action here
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const Library();
                  }));
                },
              ),
              ListTile(
                iconColor: Colors.white,
                leading: const Icon(
                  Icons.account_circle,
                  size: 30,
                ),
                title: const Text('Autors',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {
                  // Add your action here
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                iconColor: Colors.white,
                leading: const Icon(
                  Icons.add_comment_rounded,
                  size: 30,
                ),
                title: const Text('Tell a friend',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {
                  // Add your action here
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                iconColor: Colors.white,
                leading: const Icon(
                  Icons.account_tree_rounded,
                  size: 30,
                ),
                title: const Text('Filters',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {
                  // Add your action here
                  Navigator.pop(context); // Close the drawer
                },
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 310, 0, 0),
                child: Divider(
                  color: Colors.white,
                  endIndent: 20,
                  indent: 20,
                ),
              ),
              ListTile(
                //contentPadding: const EdgeInsets.fromLTRB(15, 390, 0, 0),
                iconColor: Colors.white,
                leading: const Icon(
                  Icons.settings_suggest,
                  size: 30,
                ),
                title: const Text('Settings',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {
                  // Add your action here
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                iconColor: Colors.white,
                leading: const Icon(
                  Icons.info_outline_rounded,
                  size: 30,
                ),
                title: const Text('Aboute us',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                onTap: () {
                  // Add your action here
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      enableInfiniteScroll: false,
                      height: double.infinity,
                      viewportFraction: 1,
                    ),
                    itemCount: listofquotes.length,
                    itemBuilder: (context, indexcount, realindex) {
                        //of the builder
                      String image = listofquotes[currentNum =Random().nextInt(listofquotes.length)][kImage];
                      return buildimage(image);
                    },
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: IconButton(
                      color: Colors.white,
                      iconSize: 40,
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer(); // Open the drawer
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
List<Text> quotelistt = [];
List<Text> autorlistt = [];
//
int currentNum = 0;

//

Widget buildimage(image) {
  return Container(
    color: Colors.black,
    child: Column(
      children: [
        Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Text(
                      listofquotes[currentNum][kQuote],
                      style: quoteStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      listofquotes[currentNum][kAutor],
                      style: autorStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LikeButton(
                        bubblesSize: 200,
                        circleSize: 50,

                        size: 45, //musi souhlaist s velikosti bookmarku!!!!!!

                        likeBuilder: (isTaped) {
                          return Icon(
                            Icons.bookmark,
                            size: 50,
                            color: isTaped
                                ? const Color.fromARGB(255, 255, 0, 200)
                                : Colors.white,
                          );
                        },
                        //onTap: () {},

                        //onPressed: () {},
                        //icon: const Icon(Icons.bookmark_border_rounded),
                        //color: Colors.white,
                      ),
                      IconButton(
                        iconSize: 45,
                        onPressed: () {},
                        icon: const Icon(Icons.share),
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              )),
            ))
      ],
    ),
  );
}
