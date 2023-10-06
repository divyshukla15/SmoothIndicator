import 'package:flutter/material.dart';
import 'package:screen2/coonstant.dart';
// import 'main.dart' as globals;

skipPage(var card) {
  switch (card) {
    case 0:
      return Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
              onPressed: () {
                print("object");
              },
              child:
                  Text("SKIP", style: TextStyle(fontSize: 18, color: light()))),
          InkWell(
              onTap: () {
                // print(globals.pageChange);
              },
              child:
                  Image.asset("assets/Screenshot 2023-09-28 at 4.21.26 PM.png"))
        ]),
      );

    case 1:
      return Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
              onPressed: () {
                print("object");
              },
              child:
                  Text("SKIP", style: TextStyle(fontSize: 18, color: light()))),
          Image.asset("assets/Screenshot 2023-09-28 at 12.46.26 PM.png")
        ]),
      );

    case 2:
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: lg(),
                  fixedSize: Size(150, 55)
                  ),
              onPressed: () {},
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 20, color: dark()),
              ),),
            
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: light(),
                  fixedSize: Size(150, 55)),
              onPressed: () {},
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      );
    default:
      return Text("");
  }
  // if (i == 0) {
  //   return Padding(
  // padding: EdgeInsets.only(left: 25.0),
  // child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
  //   Text("SKIP", style: TextStyle(fontSize: 18, color: dark())),
  //   Image.asset("assets/Screenshot 2023-09-28 at 4.21.26 PM.png")
  // ]),
  //   );
  // } else if (i == 1) {
  //   return Padding(
  //     padding: EdgeInsets.only(left: 25.0),
  // child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
  //   Text("SKIP", style: TextStyle(fontSize: 18, color: dark())),
  //   Image.asset("assets/Screenshot 2023-09-28 at 12.46.26 PM.png")
  //     ]),
  //   );
  // } else {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20),
  // child: Row(
  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //   children: [
  //     ElevatedButton(
  //       onPressed: () {},
  //       child: Text(
  //         "Sign In",
  //         style: TextStyle(fontSize: 20,color: Colors.black),
  //       ),
  //       style: ElevatedButton.styleFrom(elevation: 0,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(50),
  //         ),
  //         backgroundColor: lg(),
  //         fixedSize: Size(176, 60)
  //       ),
  //     ),
  //     ElevatedButton(
  //         onPressed: () {},
  //         child: Text(
  //           "Sign Up",
  //           style: TextStyle(fontSize: 20,),
  //         ), style: ElevatedButton.styleFrom(elevation: 0,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(50),
  //         ),
  //         backgroundColor: light(),
  //         fixedSize: Size(176, 60)
  //       ),)
  //   ],
  // ),
  //   );
  // }
}
