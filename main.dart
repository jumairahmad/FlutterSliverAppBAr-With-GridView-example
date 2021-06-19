import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



List<String> images=[
  'emoimages/0.png',
  'emoimages/1.png',
  'emoimages/2.png',
  'emoimages/3.png',
  'emoimages/4.png',
  'emoimages/5.png',
  'emoimages/6.png',
  'emoimages/7.png',
  'emoimages/8.png',
  'emoimages/9.png',
  'emoimages/10.png',
  'emoimages/11.png',
  'emoimages/12.png',
  'emoimages/13.png',
  'emoimages/14.png',
  'emoimages/15.png',
  'emoimages/16.png',
  'emoimages/17.png',
  'emoimages/18.png',
  'emoimages/19.png',

];


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: silvergridview(),
    );
  }
}

class silvergridview extends StatefulWidget {
  const silvergridview({Key key}) : super(key: key);

  @override
  _silvergridviewState createState() => _silvergridviewState();
}

class _silvergridviewState extends State<silvergridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],

      body: NestedScrollView(

        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return [
            SliverAppBar(
              centerTitle: true,
              expandedHeight: 200,
              backgroundColor: Colors.blue[800],
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                    'Sliver AppBar ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),

                ),

               background: Image.asset(
                   'images/night.jpg',
                   fit: BoxFit.cover,
               ),

              ),

             forceElevated: innerBoxIsScrolled,


            ),
          ];
        },

        body: GridView.count(
        shrinkWrap: true,

          mainAxisSpacing: 10,
            crossAxisSpacing: 10,
           crossAxisCount: 2,
            children:List.generate(20,
               (index) {
               return CircleAvatar(
                 
                 child: Container(
                   height: 150,
                   width: 150,
                   color: Colors.blue[700],
                   child: Center(
                     child: Image.asset(images[index]),
                   ),
                 ),
               );
              }),
       ),

    ),
    );

}
}

