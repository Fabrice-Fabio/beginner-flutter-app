import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyFirstPage(title: "Fluttergram"),
    );
  }
}

/// Difference btw StatelessWidget vs StatefulWidget

/// 1. StatelessWidget -> Don't required mutable state || The widget is destroyed and rebuilt.
/// 2. StatefulWidget -> Mutable state

class MyFirstPage extends StatefulWidget {
  String title;
  MyFirstPage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  int currentPageIndex = 0;
  late var controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://chat.openai.com/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.black),),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.favorite_outline_sharp, color: Colors.black,),
                SizedBox(width: 10,),
                Icon(Icons.linked_camera, color: Colors.black,),
              ],
            ),
          )
        ],
      ),
      body: <Widget>[
        Container(
          height: double.infinity,
          padding: EdgeInsets.all(10),
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: ClipOval(
                            child: Image.network("https://static.wikia.nocookie.net/naruto/images/d/dd/Naruto_Uzumaki%21%21.png/revision/latest?cb=20210110160123&path-prefix=fr",
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: ClipOval(
                            child: Image.network("https://w0.peakpx.com/wallpaper/878/815/HD-wallpaper-sasuke-uchiha-sasuke-uchiha-naruto-anime.jpg",
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: ClipOval(
                            child: Image.network("https://static.wikia.nocookie.net/naruto/images/5/5f/Sakura_Partie_1.png/revision/latest/scale-to-width-down/300?cb=20200607210950&path-prefix=fr",
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: ClipOval(
                            child: Image.network("https://1.bp.blogspot.com/-2ivCJOjKWk0/YWhvY3KZ0iI/AAAAAAAALBc/1sAaoUb_AcwkewTHzVom8gcM823zxCjGgCLcBGAsYHQ/s0/image1.png",
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: ClipOval(
                            child: Image.network("https://static.wikia.nocookie.net/naruto/images/d/dd/Naruto_Uzumaki%21%21.png/revision/latest?cb=20210110160123&path-prefix=fr",
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: ClipOval(
                            child: Image.network("https://w0.peakpx.com/wallpaper/878/815/HD-wallpaper-sasuke-uchiha-sasuke-uchiha-naruto-anime.jpg",
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: ClipOval(
                            child: Image.network("https://static.wikia.nocookie.net/naruto/images/5/5f/Sakura_Partie_1.png/revision/latest/scale-to-width-down/300?cb=20200607210950&path-prefix=fr",
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: ClipOval(
                            child: Image.network("https://1.bp.blogspot.com/-2ivCJOjKWk0/YWhvY3KZ0iI/AAAAAAAALBc/1sAaoUb_AcwkewTHzVom8gcM823zxCjGgCLcBGAsYHQ/s0/image1.png",
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(thickness: 2),
                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.pink,
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: ClipOval(
                                child: Image.network("https://w0.peakpx.com/wallpaper/878/815/HD-wallpaper-sasuke-uchiha-sasuke-uchiha-naruto-anime.jpg",
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("f.sumsa", style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: double.infinity,
                        height: 300,
                        color: Colors.white,
                        child: Image.network("https://storage.googleapis.com/cms-storage-bucket/408fbcae5f0f5916b429.png",
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_outline_sharp, color: Colors.black,),
                              SizedBox(width: 10,),
                              Icon(Icons.chat_bubble_outline_rounded, color: Colors.black,),
                              SizedBox(width: 10,),
                              Icon(Icons.send, color: Colors.black,),
                            ],
                          ),
                          Icon(Icons.save, color: Colors.black,),
                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.pink,
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: ClipOval(
                                child: Image.network("https://w0.peakpx.com/wallpaper/878/815/HD-wallpaper-sasuke-uchiha-sasuke-uchiha-naruto-anime.jpg",
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("f.sumsa", style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: double.infinity,
                        height: 300,
                        color: Colors.white,
                        child: Image.network("https://1.bp.blogspot.com/-2ivCJOjKWk0/YWhvY3KZ0iI/AAAAAAAALBc/1sAaoUb_AcwkewTHzVom8gcM823zxCjGgCLcBGAsYHQ/s0/image1.png",
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_outline_sharp, color: Colors.black,),
                              SizedBox(width: 10,),
                              Icon(Icons.chat_bubble_outline_rounded, color: Colors.black,),
                              SizedBox(width: 10,),
                              Icon(Icons.send, color: Colors.black,),
                            ],
                          ),
                          Icon(Icons.save, color: Colors.black,),
                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.pink,
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: ClipOval(
                                child: Image.network("https://avatars.githubusercontent.com/u/13588260?s=280&v=4",
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("f.sumsa", style: TextStyle(fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: double.infinity,
                        height: 300,
                        color: Colors.white,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNIQUmytZWAj0xcK3NORj3XnTBp-FVyXAddg&usqp=CAU",
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite_outline_sharp, color: Colors.black,),
                              SizedBox(width: 10,),
                              Icon(Icons.chat_bubble_outline_rounded, color: Colors.black,),
                              SizedBox(width: 10,),
                              Icon(Icons.send, color: Colors.black,),
                            ],
                          ),
                          Icon(Icons.save, color: Colors.black,),
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),

        Container(
          width: double.infinity,
          height: double.infinity,
          child: WebViewWidget(controller: controller),
        ),

        Card(
          child: Text("Settings page"),
        )
      ][currentPageIndex],

      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        backgroundColor: Colors.white,
        onDestinationSelected: (int index){
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.explore), label: "Explore"),
          NavigationDestination(icon: Icon(Icons.settings_rounded), label: "Settings"),
        ],
      ),
    );
  }
}


