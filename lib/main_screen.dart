import 'package:flutter/material.dart';
import 'package:zil_test_webapp/Components/Header.dart';
import 'package:zil_test_webapp/Components/filters.dart';
import 'package:zil_test_webapp/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    // This is how we can create responsive web page for every screen
    // return Scaffold(
    //   body: Responsive(
    //     mobile: ,
    //     desktop: ,
    //     tablet: ,
    //   ),
    // );

    /*  But For now I am creating for desktop only.*/

    return Scaffold(
      body: Column(
        children:  [
          const Header(),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                const Filters(),
                const Spacer(),
                Container(
                  height: 42,
                  width: 240,
                  decoration: BoxDecoration(
                    color:Colors.blue.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Container(child: Center(child: Text('Show all')))),
                      Expanded(child: Container(decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(4)),boxShadow: [BoxShadow(offset: Offset(0, 2),blurRadius: 4,color: Color(0x2979FF3D))]),child: Center(child: const Text('Buy now')))),
                      Expanded(child: Container(child: Center(child: Text('Buy later')))),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
