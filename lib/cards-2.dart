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
    return Container(
      alignment: Alignment.center,
      // color: Colors.grey,
      // width: 10,
      child: Card(
        margin: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.black87,
        elevation: 20,
        shadowColor: Colors.deepPurple,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              // width: 540,

              child: Image(
                fit: BoxFit.fitWidth,
                image: AssetImage(coverImage),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: ListTile(
                leading: Icon(
                  Icons.play_circle_outline,
                  size: 40,
                  color: Colors.white70,
                ),
                title: Text(text,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white)),
                // subtitle: Text('Teacher', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              // margin: EdgeInsets.all(5),
              color: Colors.grey[350],
              child: ButtonBar(
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    // color: Colors.grey,
                    child: FlatButton(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),

                      // autofocus: ,
                      child: const Text('Resume',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black)),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    // color: Colors.grey,
                    child: FlatButton(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      child: const Text('Start',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
