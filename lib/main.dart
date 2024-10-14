import 'package:flutter/material.dart';

void main() {
  runApp(Snack());
}

class Snack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SnackScreen(),
    );
  }
}

class SnackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          // Background image
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/hintergründe/bg_startscreen.png'),
            ),
          ),
          // Positioned container with image
          Positioned(
            top: 100,
            left: 20,
            child: Container(
              height: 600,
              width: 500,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/grafiken/chick cupcakes_3D.png'),
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: double.infinity,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/details/T2.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 620,
            left: 0,
            right: 0,
            child: Center(
              child: Card(
                color: const Color.fromARGB(116, 0, 0, 0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Feeling Snackish Today?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Explore Angi's most popular snack selection\n and get instantly happy.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.purpleAccent,
                              Colors.redAccent,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Order Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
