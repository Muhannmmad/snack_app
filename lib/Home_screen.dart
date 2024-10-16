import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:snack_app/snack_item.dart';

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
                  SizedBox(
                    child: Text(
                      "Choose Your Favorite \n Snack",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
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
                              side: BorderSide(color: Colors.white),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.coffee_maker, color: Colors.white),
                                SizedBox(width: 2),
                                Text('All categories'),
                                SizedBox(width: 2),
                                Icon(Icons.keyboard_arrow_down,
                                    color: Colors.white),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              foregroundColor: Colors.white,
                              side: BorderSide(color: Colors.white),
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
                              side: BorderSide(color: Colors.white),
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
                              side: BorderSide(color: Colors.white),
                            ),
                            child: Text('Drinks'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Stack(
                      children: [
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
                                  color: Colors.white.withOpacity(0.9),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 8),
                              Text(
                                '₳ 13.99',
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
                          bottom: -25,
                          right: 5,
                          child: Image.asset(
                            'assets/grafiken/Burger_3D.png',
                            height: 220,
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
                                  const Color.fromARGB(255, 178, 120, 239),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
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
                  SizedBox(height: 50),
                  Text(
                    "We Recommend",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snacks.length,
                      itemBuilder: (context, index) {
                        final snack = snacks[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: snackCard(context, snack),
                        );
                      },
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

  Widget snackCard(BuildContext context, SnackItem snack) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: const Color(0xFF222222),
          isScrollControlled: true,
          builder: (context) {
            return snackDrawer(snack, context);
          },
        );
      },
      child: Container(
        width: 220,
        height: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(53, 0, 0, 0).withOpacity(0.6),
              Color.fromARGB(255, 178, 120, 239),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16)),
                    image: DecorationImage(
                      image: AssetImage(snack.imagePath),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      snack.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 4),
                    Text(
                      snack.subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        SizedBox(
                          width: 125,
                          child: Text(
                            snack.price,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(
                          width: 30,
                          child: Text(
                            snack.likes,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget snackDrawer(SnackItem snack, BuildContext parentContext) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 830,
          width: MediaQuery.of(parentContext).size.width,
          decoration: BoxDecoration(
            color: const Color(0xFF2C2C2C),
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
          top: 16,
          right: 16,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.2),
            ),
            child: IconButton(
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
                      Icon(Icons.location_on, size: 18, color: Colors.white),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: List.generate(4, (index) {
                          return Icon(Icons.star,
                              size: 18, color: Colors.white);
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
          left: 20,
          right: 20,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleButtons(
                  isSelected: [false, false, true],
                  selectedColor: Colors.white,
                  color: Colors.grey,
                  fillColor: Colors.transparent,
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text('Small'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text('Medium'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text('Large'),
                    ),
                  ],
                  onPressed: (Null) {},
                ),
                SizedBox(width: 30),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color.fromARGB(83, 255, 255, 255),
                          width: 1.0,
                        ),
                      ),
                      child: Icon(Icons.remove,
                          size: 16,
                          color: const Color.fromARGB(167, 255, 255, 255)),
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
                        border: Border.all(
                          color: const Color.fromARGB(80, 255, 255, 255),
                          width: 1.0,
                        ),
                      ),
                      child: Icon(Icons.add,
                          size: 16,
                          color: const Color.fromARGB(84, 255, 255, 255)),
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
}
