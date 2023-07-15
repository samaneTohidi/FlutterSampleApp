import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List imgs =[
    'first.jpg','second.jpg','third.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: imgs.length,
        itemBuilder: (context, index) {
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
               fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/'+imgs[index]

            )
          ),
          ),
        );
      },),
    );
  }
}
