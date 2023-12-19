import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 237, 237),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 240, 237, 237),
        ),
        body: Center(
          child: Column(children: [
            Align(alignment: Alignment.center),
            SizedBox(height: 90),
            textContainer(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(alignment: Alignment.topLeft),
                MyLittleContainers(text: 'Very Low'),
                SizedBox(width: 6),
                MyLittleContainers(text: 'Low'),
                SizedBox(width: 6),
                MyLittleContainers(
                  text: 'Medium',
                  isSelected: true,
                ),
                SizedBox(width: 6),
                MyLittleContainers(text: 'High'),
                SizedBox(width: 6),
                MyLittleContainers(text: 'Very High'),
              ],
            ),
            SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Align(alignment: Alignment.center),
              Container(
                width: 287,
                height: 66,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 237, 237),
                ),
                child: const Center(
                  child: Text(
                    'This means you can do 16+ push ups, 3+ pull ups, 3+ single leg squats, and a 1+ minute plank.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 127, 126, 126),
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Align(alignment: Alignment.center),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                width: 98,
                height: 108,
                child: Column(children: [
                  SizedBox(height: 15),
                  Text(
                    'Beginner',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '0-6',
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  Text(
                    'months',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                ]),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                width: 98,
                height: 108,
                child: Column(children: [
                  SizedBox(height: 15),
                  Text(
                    'Intermediate',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '6-18',
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  Text(
                    'months',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                ]),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                width: 98,
                height: 108,
                child: Column(children: [
                  SizedBox(height: 15),
                  Text(
                    'Advanced',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '18+',
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                  Text(
                    'months',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal),
                  ),
                ]),
              ),
            ]),
            SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Align(alignment: Alignment.center),
              Container(
                width: 335,
                height: 22,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 237, 237),
                ),
                child: const Center(
                  child: Text(
                    'strength training experience in the last 5 years.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 127, 126, 126),
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}

class MyLittleContainers extends StatelessWidget {
  const MyLittleContainers({
    super.key,
    required this.text,
    this.isSelected = false,
  });

  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            30,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}

class textContainer extends StatelessWidget {
  const textContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      height: 64,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 240, 237, 237),
      ),
      child: const Center(
        child: Text(
          'What is your strength level?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
