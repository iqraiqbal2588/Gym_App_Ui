import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'bottomnavbar.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCarouselPage(),
    );
  }
}

class MyCarouselPage extends StatefulWidget {
  @override
  _MyCarouselPageState createState() => _MyCarouselPageState();
}

class _MyCarouselPageState extends State<MyCarouselPage> {
  final List<String> imagePaths = [
    'asset/images/sp1.png',
    'asset/images/sp2.png',
    'asset/images/sp3.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            itemCount: imagePaths.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Image.asset(imagePaths[index], fit: BoxFit.cover),
              );
            },
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Log in button press
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 6), // Add spacing between icon and text
                      Text(
                        "Log in",
                        style: TextStyle(fontSize: 18), // Increase font size
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Colors.white,
                    side: BorderSide(color: Colors.white),
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25), // Adjust padding
                  ),
                ),
                SizedBox(width: 16), // Add spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UnlockYourPotential()),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        "Sign up",
                        style: TextStyle(fontSize: 18), // Increase font size
                      ),
                      SizedBox(width: 6), // Add spacing between text and icon
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25), // Adjust padding
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}






class UnlockYourPotential extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(32.0), // Increase padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150),
              Text(
                "Unlock your Potential",
                style: TextStyle(
                  fontSize: 36, // Decrease font size
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 16),
              FeatureRow(
                icon: Icons.add_circle,
                text: "Enjoy your first 3 days, it's free",
              ),
              FeatureRow(
                icon: Icons.add_circle,
                text: "Daily quotes sent straight to your phone",
              ),
              FeatureRow(
                icon: Icons.add_circle,
                text: "Fitness plans designed by professionals",
              ),
              FeatureRow(
                icon: Icons.add_circle,
                text: "Monthly challenges with amazing prizes",
              ),
              FeatureRow(
                icon: Icons.add_circle,
                text: "Exclusive Alter Athletic bonuses",
              ),
              FeatureRow(
                icon: Icons.add_circle,
                text: "Fitness Progress tracker",
              ),
              FeatureRow(
                icon: Icons.add_circle,
                text: "Alter Athletic fitness apparel access",
              ),
              // Add more FeatureRow widgets for other features
              const SizedBox(height: 80),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlterAthleticPage()),
                  );
                },

                label: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20, // Decrease button font size
                  ),
                ),

                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  minimumSize: Size(double.infinity, 60), // Increase button height
                  padding: EdgeInsets.symmetric(vertical: 06, horizontal: 17), // Increase padding
                ),
                icon: Icon(Icons.arrow_forward, color: Colors.black, size: 36), // Decrease icon size
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class FeatureRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const FeatureRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
              height:27,
              width: 6),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


//////////signupscreen


class AlterAthleticPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(screenWidth * 0.05), // Adjust padding based on screen width
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.05),
                Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06, // Responsive font size
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // ... (Other Text Widgets)
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 0.4, // Adjust width based on screen width
                  height: screenWidth * 0.35, // Adjust height based on screen width
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.yellow,
                      width: 2,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'asset/images/Vector.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      labelStyle: TextStyle(color: Colors.black,fontSize: 14),
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.black,
                        size: 22,
                      ),
                      border: InputBorder.none, // Remove the outer border
                    ),
                  ),
                ),



                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.black,fontSize: 14),
                      prefixIcon: Icon(
                        Icons.supervised_user_circle_sharp,
                        size: 22,
                        color: Colors.black,
                      ),
                      border: InputBorder.none, // Remove the outer border
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black,fontSize: 14),
                      prefixIcon: Icon(
                        Icons.email,
                        size: 22,
                        color: Colors.black,
                      ),
                      border: InputBorder.none, // Remove the outer border
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Birthday',
                      labelStyle: TextStyle(color: Colors.black,fontSize: 14),
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        size: 22,
                        color: Colors.black,
                      ),
                      border: InputBorder.none, // Remove the outer border
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Phone number ',
                      labelStyle: TextStyle(color: Colors.black,fontSize: 14),
                      prefixIcon: Icon(
                        Icons.phone,
                        size: 22,
                        color: Colors.black,
                      ),
                      border: InputBorder.none, // Remove the outer border
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  children: [
                    WhiteCheckbox(
                      value: false,
                      onChanged: (value) {
                        // Handle checkbox change
                      },
                    ),
                    Text(
                      "I agree to receive occasional texts and emails",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                ElevatedButton.icon(
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp1()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: screenWidth * 0.04, // Responsive icon size
                  ),
                  label: Text(
                    "Enter Alter",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: screenWidth * 0.04, // Responsive font size
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    minimumSize: Size(screenWidth * 0.6, screenHeight * 0.04), // Responsive button size
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WhiteCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  WhiteCheckbox({
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light().copyWith(
        unselectedWidgetColor: Colors.white,
      ),
      child: Checkbox(
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}


