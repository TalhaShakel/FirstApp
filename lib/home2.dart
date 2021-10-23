import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(left: 1, right: 10)),
                  Text("Running"),
                  Text("15 items")
                ],
              ),
            ),
            NewWidget(),
            NewWidget(),
            NewWidget(),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  Card(
        //     child: Row(
        //       children: [
        //         Text("Running"),
        //         Text("15 items")
        //       ],
        //     ),
        //   ),
        // SizedBox(
        //   height: 10,
        // ),
        Card(
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image(image: AssetImage("images/download.jpg")),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(padding: EdgeInsets.only(left: 100,)),
                  Text(
                    "Shop top brands\n like Skechers",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text("Deals up to 75%"),
                  Row(
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),
                  Text(
                    r"$99.99",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
