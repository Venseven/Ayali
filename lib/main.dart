import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './transactions.dart';
import './cards-2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayali Online',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Transactions> transaction = [
      Transactions(
          id: 01, topic: "Vector Algebra", coverImage: './assets/7.jpg'),
      Transactions(
          id: 02,
          topic: "Probabilty theorem",
          coverImage: './assets/probability.jpeg'),
      Transactions(
          id: 03, topic: "Geometry", coverImage: './assets/geometry.jpg'),
      Transactions(
          id: 01, topic: "Vector Algebra", coverImage: './assets/7.jpg'),
      Transactions(
          id: 02,
          topic: "Vector sum algebra",
          coverImage: './assets/probability.jpeg'),
      Transactions(
          id: 01, topic: "Vector Algebra", coverImage: './assets/numbers.jpg'),
      Transactions(
          id: 02,
          topic: "Probabilty theorem",
          coverImage: './assets/probability.jpeg'),
      Transactions(
          id: 03, topic: "Geometry", coverImage: './assets/geometry.jpg'),
      Transactions(
          id: 01, topic: "Vector Algebra", coverImage: './assets/numbers.jpg'),
      Transactions(
          id: 02,
          topic: "Vector sum algebra",
          coverImage: './assets/probability.jpeg'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Ayali online'),
        backgroundColor: Colors.black,
      ),
      // body: ListView.builder(
      body: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
                enableInfiniteScroll: false,
                viewportFraction: 1.0,
                aspectRatio: MediaQuery.of(context).devicePixelRatio,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayCurve: Curves.easeIn,
                height: MediaQuery.of(context).size.height * 0.8,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items:

//       ListView.builder(
// // for list view builder-----------------------------------------------------
//         itemBuilder: (ctx, index) {
//           return Panels(
//               transaction[index].topic, transaction[index].coverImage);
//         },
//         physics: BouncingScrollPhysics(),
//         itemCount: transaction.length,

// ---------------------------------------------------------------
                // children: <Widget>[
                // Container(
                //   margin: EdgeInsets.all(20),
                //   width: double.infinity,
                //   height: 130,
                //   // alignment: Alignment.center,
                //   child:  Card(

                //     color: Colors.grey,
                //     elevation: 10,
                //     child: Padding(
                //       padding: const EdgeInsets.all(8.0),
                //        child: Text(
                //         "Card-1",
                //         textAlign: TextAlign.center,
                //         ),
                //     ),),
                // ),

                // Container(
                //   // margin: EdgeInsets.all(5),
                //   constraints: BoxConstraints.expand(
                //     height:
                //         Theme.of(context).textTheme.headline4.fontSize * 1.1 + 100.0,
                //   ),
                //   padding: const EdgeInsets.all(2.0),
                //   color: Colors.blueGrey[600],
                //   alignment: Alignment.center,
                //   child: Text('Mathematics',
                //       style: Theme.of(context)
                //           .accentTextTheme
                //           .headline5
                //           .copyWith(color: Colors.black)),
                //   transform: Matrix4.rotationZ(0.05),
                // ),

                transaction.map((tx) {
              //  return Card(child: Text(tx.topic),);

              return Panels(tx.topic, tx.coverImage);
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: transaction.map((url) {
              int index = transaction.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
