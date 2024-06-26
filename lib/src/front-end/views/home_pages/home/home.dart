import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:code_cubicle/src/front-end/widgets/home_card.dart';

import '../../../../back-end/utils/routes/route_const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'How can we help you?',
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
        ),
        toolbarHeight: 65,
        toolbarOpacity: 0.8,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.01),
              HomeCard(
                title: "Find Donor",
                description: "Find Donor that nearby you",
                button: "Learn",
                image: 'assets/images/home_image2.png',
                icon: const Icon(Icons.search),
                onPressed: () {
                  Navigator.pushNamed(context, RouterConstant.donorlist);
                },
              ),
              SizedBox(height: height * 0.01),
              HomeCard(
                title: "Locate Nearby Bloodbanks",
                description: "Find Nearby BloodBank.",
                button: "Search",
                image: 'assets/images/home_image1.png',
                icon: const Icon(
                  Icons.search,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RouterConstant.bloodbank);
                },
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     ScaffoldMessenger.of(context)
      //         .showSnackBar(const SnackBar(content: Text('Make an Request')));
      //   },
      //   icon: const Icon(Icons.add),
      //   label: Text(
      //     'Request',
      //     style: GoogleFonts.montserrat(
      //         fontSize: 13.0, fontWeight: FontWeight.w600),
      //   ),
      // ),
    );
  }
}

// 4 4 1 4 13 8 8 8 0 8 14 9 15 11 -1 10 15 22 22 22 22 22 21 
