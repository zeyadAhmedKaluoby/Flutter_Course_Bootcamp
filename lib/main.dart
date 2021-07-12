import 'package:flutter/material.dart';

//main function is starting point for all flutter apps
void main() {
  //run your application as material pattern
  runApp(
    MaterialApp(
      //how your app start with a widget
      //center to center all content into the center of screen
      home: /*Center(
      child: Text("Hello world"),
    ),*/
          Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text("I Am Rich"),
            ),
            backgroundColor: Colors.red),
        body:/* Center(
            child: Image(
                image:
                    /*NetworkImage(
                  'https://wallsdesk.com/wp-content/uploads/2017/01/Oslo-Images.jpg')),
       */
                    AssetImage('images/Monaco-Wallpaper-.jpg')))*/
            MyStatelessWidget(),
        backgroundColor: Colors.blueGrey[100],
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 100,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Hey Rich',
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      ),
    ),
  );
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showBottomSheet'),
        onPressed: () {
          Scaffold.of(context).showBottomSheet<void>(
                (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('BottomSheet'),
                      ElevatedButton(
                          child: const Text('Close BottomSheet'),
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

