import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_8/home2.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   var entries = [
//     "images/download.jpg",
//     "images/download1.jpg",
//     "images/download2.jpg"
//   ];
//   var lst = [
//     "Men 'EMMETT' Traditional Leather...GS7592",
//     "Men 'CLIO' Comfy Slippers",
//     "Men 'CLIO' Comfy Slippers"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return
//       body: Column(
//         children: [
//           Text("Running"),
//           Text("15 Items"),
//           ListView.builder(
//               itemCount: entries.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: Stack(
//                     children: [
//                       ListTile(
//                         tileColor: Colors.white,
//                         title: Text(
//                           lst[index],
//                           textScaleFactor: 1,
//                         ),
//                         leading: Image.asset(entries[index]),
//                         subtitle: Text("Mens"),
//                         trailing: CircleAvatar(
//                           backgroundColor: Colors.amber,
//                           child: Icon(Icons.shopping_bag_rounded),
//                         ),

//                         // minVerticalPadding: 22,
//                       ),
//                     ],
//                   ),
//                 );
//               }),
//         ],
//       ),
//     );
//   }
// }
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          "MobiSport",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white),
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Running",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("15 items"),
                  ],
                ),
              ),
              NewWidget(),
              NewWidget(),
              NewWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.blue[50],
          icon: Icon(
            Icons.home,
            color: Colors.blue,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.category,
            color: Colors.blue,
          ),
          label: "Categories",
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.blue,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.blue,
            ),
            label: "Home")
      ]),
    );
  }
}
