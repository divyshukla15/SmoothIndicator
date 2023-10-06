import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'coonstant.dart';
import 'skip_page.dart';
import 'card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int pageChange = 0;


class _MyHomePageState extends State<MyHomePage> {
   final controller =
      PageController(viewportFraction: .8, keepPage: true, initialPage: 0);
  //int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                "tayst",
                style: TextStyle(
                    color: dark(),
                    letterSpacing: 0.4,
                    fontSize: 40,
                    fontFamily: "Aregular"),
              ),
              const SizedBox(height: 20),

              SizedBox(
               
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: PageView(
                    onPageChanged: (index) {
                      print(pageChange);
                      setState(() {
                        pageChange = index;
                        
                      });
                      print(pageChange);
                    },
                    children: [
                    changeing(),
                     changeing(),
                      changeing()
                    
                    ]),
               
              ),

              AnimatedSmoothIndicator(
                duration: const Duration(milliseconds: 300),
                activeIndex: pageChange,
                count: 3,
                effect: ExpandingDotsEffect(
                    spacing: 8.0,
                    expansionFactor: 6,
                    dotHeight: 6,
                    dotWidth: 6,
                    paintStyle: PaintingStyle.fill,
                    strokeWidth: 1.0,
                    dotColor: lg(),
                    activeDotColor: lg()
                    // type: WormType.thinUnderground,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              skipPage(pageChange),
              // Text(lst[pageChange])
            ],
          ),
        ),
      ),
    );
  }
  changeing(){
    return Card4();
    

  }
}
