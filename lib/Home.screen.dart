import 'package:flutter/material.dart';

void main() {
  runApp(SnackApp());
}

class SnackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/hintergründe/bg_mainscreen.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose Your Favorite \n Snack",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              foregroundColor: Colors.white,
                            ),
                            child: Text('All categories'),
                          ),
                          SizedBox(width: 8),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              foregroundColor: Colors.white,
                            ),
                            child: Text('Salty'),
                          ),
                          SizedBox(width: 8),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              foregroundColor: Colors.white,
                            ),
                            child: Text('Sweet'),
                          ),
                          SizedBox(width: 16),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              foregroundColor: Colors.white,
                            ),
                            child: Text('Drinks'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Stack(
                      children: [
                        // Card image
                        Container(
                          height: 250,
                          width: 380,
                          child: Image.asset(
                            'assets/details/Top Card.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Angi's Yummy Burger",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Delish vegan burger\n that tastes like heaven",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 8),
                              Text(
                                '\$13.99',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -20,
                          right: 20,
                          child: Image.asset(
                            'assets/grafiken/Burger_3D.png',
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 123, 42, 204),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color: Color.fromARGB(255, 233, 138, 13)
                                      .withOpacity(0.1),
                                  width: 3.0,
                                ),
                              ),
                              shadowColor: Colors.black.withOpacity(1),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 12),
                            ),
                            child: Text('Add to order'),
                          ),
                        ),

                        Positioned(
                          right: 20,
                          top: 20,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/grafiken/star.png',
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(width: 2),
                              Text(
                                "4,8",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Text(
                      "We Recommend",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
