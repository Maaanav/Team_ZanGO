import 'package:flutter/material.dart';
import 'package:untitled/screens/sos.dart';
import 'package:untitled/screens/support.dart';

import 'vol.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              color: Colors.amberAccent,
            ),

            SizedBox(
              height: 50,
            ),

            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                  children: [
                    HorizontalCard('assets/images/login1.png','Card 1', 'Description for Card 1'),
                    HorizontalCard('assets/images/login1.png','Card 2', 'Description for Card 2'),
                  ],
              ),
            )
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Supports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'SOS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Volunteer',
          ),
        ],
      ),
    );
  }
}


class HorizontalCard extends StatelessWidget {

  final String imagePath;
  final String title;
  final String description;

  HorizontalCard(this.imagePath, this.title, this.description);

  @override
  Widget build(BuildContext context) {
      return Container(
        width: 200, // Adjust the width as needed
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 50, // Adjust the image height as needed
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }
  }

