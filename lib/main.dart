import 'package:flutter/material.dart';
import 'package:flutter_reposive_pro/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Responsive.isDesktop(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: width * 0.35,
                    height: height * 0.35,
                    color: Colors.red,
                  ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'آموزش ریسپانسیو کردن اپ',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.035),
                    ),
                    Text(
                      'پیج ما رو دنبال کنید تا ضرر نکنی',
                      style: TextStyle(fontSize: width * 0.025),
                    ),
                  ],
                ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: width * 0.55,
                    height: height * 0.25,
                    color: Colors.green,
                  ),
                  Text(
                    'آموزش ریسپانسیو کردن اپ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.035),
                  ),
                  Text(
                    'پیج ما رو دنبال کنید تا ضرر نکنی',
                    style: TextStyle(fontSize: width * 0.025),
                  ),
                ],
              ),
      ),
    );
  }
}
