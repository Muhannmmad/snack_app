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
    return Container(
      height: 830,
      width: MediaQuery.of(parentContext).size.width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(64, 0, 0, 0).withOpacity(0.1),
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Positioned(
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    padding: EdgeInsets.all(0),
                    child: IconButton(
                      icon: Icon(Icons.close),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(parentContext).pop();
                      },
                    ),
                  ),
                ),
                Image.asset(
                  snack.imagePath,
                  height: 400,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16),
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
                  textAlign: TextAlign.center,
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
                SizedBox(height: 16),
                SizedBox(height: 40),
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
                    onPressed: () {
                      Navigator.of(parentContext).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Add to order for ${snack.price} ',
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
          ],
        ),
      ),
    );
  }
}
