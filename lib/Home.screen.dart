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
                    "Choose Your Favorite Snack",
                    style: TextStyle(
                      fontSize: 28,
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
                          SizedBox(width: 8),
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
                  SizedBox(height: 20),
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          height: 300,
                          width: 400,
                          child: Image.asset(
                            'assets/details/Top Card.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Main Card content
                        Positioned(
                          top: 20,
                          left: 20,
                          right: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Burger Image
                              Image.asset(
                                'assets/grafiken/Burger_3D.png',
                                height: 120,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(height: 16),
                              // Burger Title
                              Text(
                                "Angi's Yummy Burger",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              // Burger Description
                              Text(
                                "Delish vegan burger that tastes like heaven",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 16),
                              // Price and Button Row
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$13.99',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 123, 42, 204),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 12),
                                    ),
                                    child: Text('Add to order'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
