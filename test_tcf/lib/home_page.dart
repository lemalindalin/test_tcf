import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart' as color;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
            "Ceci est un Titre",
            style: Theme.of(context).textTheme.headline1
            ),
            const Image(
              image: AssetImage("assets/gem.png"),
              height: 60,
              width: 60,
            ),
            Text(
              "10",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      color.AppColors.gradientFirst.withOpacity(0.8),
                      color.AppColors.gradientSecond.withOpacity(0.9),
                    ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 10),
                    blurRadius: 10,
                    color: color.AppColors.gradientSecond.withOpacity(0.4)

                  )
                ],
                borderRadius: const BorderRadius.all(
                    Radius.circular(10))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "02",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: color.AppColors.homePageContainerTextSmall,
                    ),
                  ),
                  SizedBox(width: 5,),

                  const Image(
                    image: AssetImage("assets/gem.png"),
                    height: 20,
                    width: 20,
                  ),

                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            color.AppColors.gradientFirst.withOpacity(0.8),
                            color.AppColors.gradientSecond.withOpacity(0.9),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5, 10),
                            blurRadius: 10,
                            color: color.AppColors.gradientSecond.withOpacity(0.4)

                        )
                      ],
                        borderRadius: const BorderRadius.all(
                            Radius.circular(10))
                    ),
                    child: Text(
                      "Diamands",
                      style: TextStyle(
                        color: color.AppColors.homePageContainerTextSmall
                      ),
                    ),
                  )
                ],

              ),

            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.favorite),
      ),
    );
  }
}