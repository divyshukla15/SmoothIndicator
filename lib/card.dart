import 'package:flutter/material.dart';
import 'package:screen2/coonstant.dart';
import 'package:screen2/main.dart';

import 'data.dart';


class Card4 extends StatelessWidget {
  const Card4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // color: Colors.red,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Container(
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  Padding(
                  
                    padding: const EdgeInsets.only(left: 34.0, right: 34.0),
                    child: Image.asset(imgBig[pageChange]),
                  ),
                  const SizedBox(height: 38),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Text(
                      subHeading[pageChange],
                      style: TextStyle(
                          color: dark(),
                          letterSpacing: 1.9,
                          fontSize: 28,
                          fontFamily: 'Athelas'),textAlign: TextAlign.center
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 9,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Text(
                     content[pageChange],
                      style: TextStyle(
                        fontFamily: 'Futura',
                        height: 1.2,
                        letterSpacing: 0.1,

                        color: light(),
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )),
          Positioned(
              left: 205,
              child: InkWell(
                child: Image.asset(
                 imgSmall[pageChange],
                  cacheHeight: 150,
                  cacheWidth: 150,
                ),
                onTap: () {
                  print('page1');
                },
              )),
        ]),
      ),
    );
  }
}
