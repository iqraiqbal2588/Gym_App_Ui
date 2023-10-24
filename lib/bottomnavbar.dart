import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'main.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: 'Bottom NavBar Demo',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        splashColor: Colors.blue,
        highlightColor: Colors.blueAccent,
        hoverColor: Colors.blue,
        backgroundColor: Colors.blue,
      ),

      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    cart(),
    ProgramChange(),
    Mindsetquotes(),
    Maychallenge(),
    Profile(),




  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,


      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.13,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),

        ),
      ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch the content horizontally
          children: [
            Text(
              "ALTER",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0), // Add some vertical spacing between tabs and content
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildNavItem(0, Icons.home, "Home"),
                buildNavItem(1, Icons.menu_book_outlined, "Program"),
                buildNavItem(2, Icons.compass_calibration_rounded, "Comp"),
                buildNavItem(3, Icons.format_quote, "Quotes"),
                buildNavItem(4, Icons.supervisor_account, "Profile"),
              ],
            ),
          ],
        ),


    );


  }

  Widget buildNavItem(int index, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          enableFeedback: false,
          onPressed: () {
            setState(() {
              pageIndex = index;
            });
          },
          icon: Icon( // Remove 'const' here
            icon,
            color: pageIndex == index ? Colors.yellow : Colors.grey,
            size: 35,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: pageIndex == index ? Colors.yellow : Colors.grey,
            fontSize: 14,
          ),
        )
      ],
    );
  }

}





///////////////////////cart





class cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartScreen(),
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "  Home",
                  style: TextStyle(
                    fontSize: 20, // Adjust font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ContainerWithBackground(
                  imagePath: 'asset/images/Rectangle 88.png',
                  bottomLeftText: "Shopify Playlist",
                  topRightButtonLabel: "Fitness",
                  screenWidth: screenWidth,
                ),
                SizedBox(height: 18),
                ContainerWithBackground(
                  imagePath: 'asset/images/Rectangle 89.png',
                  bottomLeftText: "Reel Audio",
                  topRightButtonLabel: "Creative",
                  screenWidth: screenWidth,
                ),
                SizedBox(height: 18),
                ContainerWithBackground(
                  imagePath: 'asset/images/Rectangle 90.png',
                  bottomLeftText: "Wuf Digital Interview",
                  topRightButtonLabel: "Money",
                  screenWidth: screenWidth,
                ),
                SizedBox(height: 18),
                ContainerWithBackground(
                  imagePath: 'asset/images/Rectangle 91.png',
                  bottomLeftText: "Alex Interview",
                  topRightButtonLabel: "Money",
                  screenWidth: screenWidth,
                ),
                SizedBox(height: 18),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerWithBackground extends StatelessWidget {
  final String imagePath;
  final String bottomLeftText;
  final String topRightButtonLabel;
  final double screenWidth;

  const ContainerWithBackground({
    required this.imagePath,
    required this.bottomLeftText,
    required this.topRightButtonLabel,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 145,
          width: screenWidth - 32, // Adjusted width based on screen size and padding
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              bottomLeftText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16, // Adjusted font size
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyScreen()),
                  );
            },
            child: Text(
              topRightButtonLabel,
              style: TextStyle(
                fontSize: 14, // Adjusted font size
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              onPrimary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// program





class ProgramChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartScreen2(),
    );
  }
}

class CartScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0), // Adjust the padding as needed
        child: ListView(
          children: const [
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Program",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProgramContainer(
                  imagePath: 'asset/images/Rectangle 88 (1).png',
                  bottomLeftText: "Alter Split",
                  topRightButtonLabel: "advanced",
                ),
                SizedBox(height: 18),
                ProgramContainer(
                  imagePath: 'asset/images/Rectangle 89 (1).png',
                  bottomLeftText: "Push Pull legs",
                  topRightButtonLabel: "Intermediate",
                ),
                SizedBox(height: 18),
                ProgramContainer(
                  imagePath: 'asset/images/Rectangle 90 (2).png',
                  bottomLeftText: "Upper/Lower",
                  topRightButtonLabel: "Beginner",
                ),
                SizedBox(height: 18),
                ProgramContainer(
                  imagePath: 'asset/images/Rectangle 91 (1).png',
                  bottomLeftText: "Booty Workshop",
                  topRightButtonLabel: "Intermediate",
                ),
                SizedBox(height: 18),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProgramContainer extends StatelessWidget {
  final String imagePath;
  final String bottomLeftText;
  final String topRightButtonLabel;

  const ProgramContainer({
    required this.imagePath,
    required this.bottomLeftText,
    required this.topRightButtonLabel,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double scaleFactor = screenWidth / 380; // Adjust based on your design

    return Stack(
      children: [
        Container(
          height: 145 * scaleFactor,
          width: 380 * scaleFactor,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Padding(
            padding: EdgeInsets.all(8.0 * scaleFactor),
            child: Text(
              bottomLeftText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12, // Adjust font size as needed
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the appropriate screen
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => AlterSplit()),
              // );
            },
            child: Text(
              topRightButtonLabel,
              style: TextStyle(
                fontSize: 10, // Adjust font size as needed
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              onPrimary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}




/////////////AlterSplit



class AlterSplit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowMaterialGrid: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Alter Split',
                        style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          'Ideal for gaining size and strength',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (var day in ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"])
                          Column(
                            children: [
                              Text(
                                day,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  const Row(
                    children: [
                      Flexible(
                        child: Text(
                          'Leg day',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [


                      Container(

                        child: Image.asset("asset/images/Rectangle 77.png"),
                      ),
                      SizedBox(width: 16), // Adjust the spacing between image and text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '5×5 Barbell squats',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8), // Add vertical spacing between text lines
                            Text(
                              '5 sets of 5 Barbell squats ,',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'weight, go up if you feel you ',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'could have done 6-7 reps. Go,',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'down if you fail to get 5,',
                              style: TextStyle(fontSize: 16),
                            ),
                            // Add more Text widgets for additional lines of text
                          ],
                        ),
                      ),







                    ],
                  ),
                  SizedBox(height: 6),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [


                      Container(

                        child: Image.asset("asset/images/Rectangle 78.png"),
                      ),
                      SizedBox(width: 16), // Adjust the spacing between image and text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '4×12 Barbell squats',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8), // Add vertical spacing between text lines
                            Text(
                              '5 sets of 5 Barbell squats ,',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'weight, go up if you feel you ',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'could have done 6-7 reps. Go,',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'down if you fail to get 5,',
                              style: TextStyle(fontSize: 16),
                            ),
                            // Add more Text widgets for additional lines of text
                          ],
                        ),
                      ),







                    ],
                  ),
                  SizedBox(height: 6),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [


                      Container(

                        child: Image.asset("asset/images/Rectangle 79.png"),
                      ),
                      SizedBox(width: 16), // Adjust the spacing between image and text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '5×5 Barbell squats',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8), // Add vertical spacing between text lines
                            Text(
                              '5 sets of 5 Barbell squats ,',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'weight, go up if you feel you ',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'could have done 6-7 reps. Go,',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'down if you fail to get 5,',
                              style: TextStyle(fontSize: 16),
                            ),
                            // Add more Text widgets for additional lines of text
                          ],
                        ),
                      ),







                    ],
                  ),
                  SizedBox(height: 6),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [


                      Container(

                        child: Image.asset("asset/images/Rectangle 80.png"),
                      ),
                      SizedBox(width: 16), // Adjust the spacing between image and text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '5×5 Barbell squats',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8), // Add vertical spacing between text lines
                            Text(
                              '5 sets of 5 Barbell squats ,',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'weight, go up if you feel you ',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'could have done 6-7 reps. Go,',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'down if you fail to get 5,',
                              style: TextStyle(fontSize: 16),
                            ),
                            // Add more Text widgets for additional lines of text
                          ],
                        ),
                      ),







                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


//May Challenge

class Maychallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              const Text(
                "May Challenge",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "  Rules",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
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
                      text: "Monthly challenges with amazing prices",
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
                  ],
                ),
              ),


              SizedBox(height: 12,),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlterAthleticPage()),
                  );
                },

                label: Text('Submit Entry',style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),),

                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  minimumSize: Size(double.infinity, 60), // Adjust the height here
                ),
                icon: Icon(Icons.lock_person_sharp,color: Colors.black,size: 30,),
              ),
              SizedBox(height: 12,),
              Text(
                "  Your Entries: 8",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,

                ),
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "  Leaderboard",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.leaderboard_outlined,color: Colors.yellow,),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 400, // Adjust the width as needed
                      height: 40, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(80),

                      ),
                      child: const Text("  @JakeTheSnake    10",style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    SizedBox(height: 20),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "  ALTER",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
}
///Mindset Quotes

class Mindsetquotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: MQ(),
    );
  }
}

class  MQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 80, // Adjust width based on screen width
                height: 80, // Adjust height based on screen width
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
      
            ),
            Text(
              'Mindset Quotes',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(26), // Adjust the radius as needed
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: double.infinity,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                    ),
                    items: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('asset/images/Rectangle 92.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'GRATNESS IS ACHIEVED THROUGH HARD WORK',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      // Add more carousel items here
                    ],
                  ),
                ),
              ),
            ),
      
      
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Quote Notification',style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
      
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
      
                      Text('Quotes per Day',style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                  SizedBox(height: 10),
                  Slider(
                    value: 0.5, // Set initial value here
                    onChanged: (value) {
                      // Handle value change here
                    },
                    activeColor: Colors.yellow,
                    inactiveColor: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('8:00 AM'),
                      Text('2:00 PM'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Slider(
                    value: 0.3, // Set initial value here
                    onChanged: (value) {
                      // Handle value change here
                    },
                    activeColor: Colors.yellow,
                    inactiveColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//profile


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstagramProfileScreen(),
    );
  }
}

class InstagramProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InstagramProfile(),
    );
  }
}

class InstagramProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0), // Add padding from all sides
      child: ListView(
        children: [
          SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('asset/images/profile.jpg'),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    '@JakeTheSnake',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '45                    3',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 4),
                      Text(
                        'Photos           Comp Entries',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 3,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/Rectangle 92.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/Rectangle 79.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/Rectangle 80.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child:Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/Rectangle 88.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/Rectangle 89.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/Rectangle 91.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Add more StaggeredGridTile widgets as needed
            ],
          ),
        ],
      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0), // Add padding from all sides
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Row(
                  children: [
                    Text(
                      "Interview With JonXPaul",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('asset/images/Rectangle 90.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 200,
                      width: 340,
                      child: Text(
                        ' It tells the story of Dorian Gray, a wealthy young Englishman who prizes his looks and his youth above all else. The basic plot of the novel is as follows: Dorian has his portrait painted as a young man. The portrait takes on Dorian\'s sins and his signs of aging '
                            'a wealthy young Englishman who prizes his looks and his youth above The Picture of Dorian Gray is a philosophical novel by Irish writer Oscar Wilde. A shorter novella-length version was published in the July 1890 issue of the American periodical Lippincott\'s Monthly Magazine. The novel-length version was published in April 1891.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
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

