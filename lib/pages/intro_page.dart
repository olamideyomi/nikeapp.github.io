// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(65.0),
              child: Image.asset(
                'lib/images/logo.png',
                height: 240,
              ),
            ),

            const SizedBox(
              height: 50,
            ),

            // title
            Text(
              'Just Do it',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Brand new sneakers and custom kick made with premium quality',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            // sub title

            const SizedBox(height: 50),

            GestureDetector(
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => HomePage(),
              ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(25),
                child: const Center(
                child: Text(
                  'Show Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,),
            
                ),
                ),
            
              ),
            )
            // start now button
          ]),
        ),
      ),
    );
  }
}
