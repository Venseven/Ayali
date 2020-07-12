// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Panels extends StatelessWidget {
  final String text;
  final String coverImage;
  Panels(this.text, this.coverImage);

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     margin: EdgeInsets.all(5),
  //     width: double.infinity,
  //     height: 50,
  //     child: Card(
  //       color: Colors.cyan,
  //       elevation: 10,
  //       child: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Text(
  //           text,
  //           textAlign: TextAlign.center,
  //         ),
  //       ),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 25, 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurple[100], width: 4)),
            child: Image(
              height: 60,
              width: 60,
              image: AssetImage(coverImage),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(text),
              // Text("MAN !")
            ],
          )
        ],
      ),
    );
  }
}
