import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:snack_app/repositorie/snack_item.dart';

Widget snackDrawer(SnackItem snack, BuildContext parentContext) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        height: 830,
        width: MediaQuery.of(parentContext).size.width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(86, 44, 44, 44),
        ),
        padding: EdgeInsets.all(16),
      ),
      Positioned(
        top: -120,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          child: Image.asset(
            snack.imagePath,
            height: 400,
            width: MediaQuery.of(parentContext).size.width,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 15,
        right: 15,
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.2),
          ),
          child: IconButton(
            iconSize: 15,
            icon: Icon(Icons.close, color: Colors.white),
            onPressed: () {
              Navigator.of(parentContext).pop();
            },
          ),
        ),
      ),
      Positioned(
        top: 230,
        left: 20,
        right: 20,
        bottom: 250,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      snack.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      snack.subtitle,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[400],
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      snack.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 24),
                    Text(
                      ' ${snack.price}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: Divider(
                        color: const Color.fromARGB(84, 255, 255, 255),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        height: 500,
        right: 40,
        child: Row(
          children: [
            Icon(
              Icons.favorite_border,
              color: const Color.fromARGB(70, 255, 255, 255),
              size: 15,
            ),
            SizedBox(
              width: 30,
              child: Text(
                snack.likes,
                style: TextStyle(
                  fontSize: 14,
                  color: const Color.fromARGB(61, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        top: 480,
        right: 50,
        left: 50,
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ingredients",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text(
                  "Reviews",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.grain, size: 18, color: Colors.white),
                    SizedBox(width: 6),
                    Icon(Icons.no_food, size: 18, color: Colors.white),
                    SizedBox(width: 6),
                    Icon(Icons.local_fire_department,
                        size: 18, color: Colors.white),
                    SizedBox(width: 6),
                    Icon(Icons.casino, size: 18, color: Colors.white),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: List.generate(4, (index) {
                        return Icon(Icons.star, size: 18, color: Colors.white);
                      }),
                    ),
                    Icon(Icons.star_border, size: 18, color: Colors.white),
                    SizedBox(width: 4),
                    Text(
                      "4.0",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 120,
        left: 0,
        right: 0,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(20, 255, 255, 255)
                          .withOpacity(0.1),
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                          right: Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      child: Text(
                        'Small',
                        style: TextStyle(
                            color: const Color.fromARGB(182, 255, 255, 255),
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(20, 255, 255, 255)
                          .withOpacity(0.1),
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                          right: Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      child: Text(
                        'Medium',
                        style: TextStyle(
                            color: const Color.fromARGB(182, 255, 255, 255),
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                          right: Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      child: Text(
                        'Large',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 60),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(20, 255, 255, 255)
                          .withOpacity(0.1),
                      border: Border.all(
                        color: const Color.fromARGB(83, 255, 255, 255),
                        width: 1.0,
                      ),
                    ),
                    child: Icon(Icons.remove,
                        size: 16,
                        color: const Color.fromARGB(200, 255, 255, 255)),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15),
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(20, 255, 255, 255)
                          .withOpacity(0.1),
                      border: Border.all(
                        color: const Color.fromARGB(80, 255, 255, 255),
                        width: 1.0,
                      ),
                    ),
                    child: Icon(Icons.add,
                        size: 16,
                        color: const Color.fromARGB(188, 255, 255, 255)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 730,
        left: 0,
        right: 0,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purpleAccent, Colors.redAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(parentContext).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Add to order for ${snack.price}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
