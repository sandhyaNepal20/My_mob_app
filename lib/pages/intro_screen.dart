import 'dart:ui'; // Import this for the BackdropFilter

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sandhya's Cosmetic Face Collection", // Updated title here
          style: GoogleFonts.notoSerif(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent, // Make the app bar transparent
        elevation: 0, // Remove the shadow
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image with Blur
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/palate.jpg'), // Updated image
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust the blur intensity
              child: Container(
                color: const Color.fromARGB(255, 247, 242, 242).withOpacity(0.1), // Adjust the overlay color and opacity
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                // big logo
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100.0,
                    right: 100.0,
                    top: 40, // Adjusted top padding
                    bottom: 20,
                  ),
                  child: Image.asset('lib/images/mylogo.png'), // Updated logo
                ),

                // we deliver cosmetics at your doorstep // Updated text
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text(
                    'We deliver cosmetics at your doorstep', // Updated text
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSerif(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // cosmetic gives you fresh beauty products every day // Updated text
                Text(
                  'Fresh beauty products every day', // Updated text
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 7, 7, 7),
                  ),
                ),

                const SizedBox(height: 24),

                const Spacer(),

                // get started button
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color.fromARGB(255, 112, 183, 241),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
