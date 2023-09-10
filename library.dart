import 'package:flutter/material.dart';
import 'package:my_app_three/home.dart';
import 'package:my_app_three/styles.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(212, 4, 4, 4),
        width: 200,
        
        child: ListView(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(15, 25, 0, 0),
              iconColor: const Color.fromARGB(255, 255, 255, 255),
              leading: const Icon(
                Icons.my_library_books_outlined,
                size: 30,
              ),
              title: const Text('Quotes',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onTap: () {
                // Add your action here
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const Home();
                }));
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              iconColor: const Color.fromARGB(255, 192, 0, 153),
              leading: const Icon(
                Icons.bookmark_added_outlined,
                size: 45,
              ),
              title: const Text('Library',
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
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: const IconThemeData(size: 40,color: Colors.white),
        title: const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Icon(
                Icons.bookmark_added_outlined,
                size: 50,
                color:  Color.fromARGB(255, 192, 0, 153),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text('Library', style: librarystyle),
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child: ListView(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Container(
                  color: const Color.fromARGB(255, 192, 0, 153),
                  width: double.infinity,
                  height: 200,
                  child: const Column(
                    children: [Text('ahojFWEFWFWFWFWNNFWJFNWFNJWJFWKEFKWNFJKWEFJKNJFHWEIFWEBGFIWBWEFBWHBFWHBFHWBFWBFHJWBFHJWBFHJWBFEGERGMKFJWOENFNJFNBIWUIBFHWEUIFRHWEUPFHWEUIPFHWEIPFHWEUIPFHWEHFROJjOIJIOPHDWUIDFHWFWF+645WF9+4WF5614WF564WE9F4W98ERGREGAEGAGAERGAERGAgrargagargaergargareognejirgnjerngerrngjinergjinerigjEF498WF49W8E4F9WEF46WE4F5WF49W47F9W84FEW84F9W84F95JHWBFJHWBFHJWBFJHWBFJWHBFWBFHWBFWHFBWHJFBWHJBFJWHBFJWWFKNWFKFKWNFWKFNWKJFNWKJFWJKFNKJWNFWNFKWNFJKWNFKWNFNSJNDFWIWJDIDJDIDJIDOJOIJROIWJOIWJFWFUIOWFIOWJOW OWR OIWJ'),
                      //Icon(Icons.abc)
                      ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Container(
                  color: const Color.fromARGB(255, 192, 0, 153),
                  width: double.infinity,
                  height: 200,
                  child: const Column(
                    children: [Icon(Icons.abc)],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Container(
                  color: const Color.fromARGB(255, 192, 0, 153),
                  width: double.infinity,
                  height: 200,
                  child: const Column(
                    children: [Icon(Icons.abc)],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Container(
                  color: const Color.fromARGB(255, 192, 0, 153),
                  width: double.infinity,
                  height: 200,
                  child: const Column(
                    children: [Icon(Icons.abc)],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Container(
                  color: const Color.fromARGB(255, 192, 0, 153),
                  width: double.infinity,
                  height: 200,
                  child: const Column(
                    children: [Icon(Icons.abc)],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
