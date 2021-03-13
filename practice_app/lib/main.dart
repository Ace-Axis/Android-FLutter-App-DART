import 'package:flutter/material.dart';

var assetImage = AssetImage('assest/ss1.png');
var image = Image(
  image: assetImage,
);
void main() {
  runApp(MaterialApp(
    title: 'Practice App',
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('Clicked');
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Clicked Search');
              }),
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              print('Clicked notification');
            },
            color: Colors.white54,
          )
        ],
        elevation: 6,
        titleSpacing: 12,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
        onPressed: () {
          print('Clicked');
        },
        //mini: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        elevation: 5,
        highlightElevation: 10,
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     print('Clicked');
      //   },
      //   icon: Icon(
      //     Icons.message,
      //     color: Colors.white,
      //   ),
      //   label: Text('message'),
      //   foregroundColor: Colors.black,
      //   backgroundColor: Colors.orange,
      // ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://cdn.pixabay.com/photo/2021/02/08/16/03/dinosaur-5995333_1280.png',
            ),
            backgroundColor: Colors.blue,
            radius: 32,
          ),
          Text(
            'Ashwani',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(icon: Icon(Icons.home), onPressed: () {}),
                  IconButton(icon: Icon(Icons.search), onPressed: () {}),
                  IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
                  IconButton(icon: Icon(Icons.person), onPressed: () {}),
                ],
              ))),
    );
  }
}
