import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatar_glow/avatar_glow.dart';

// Autores
// - Dilan Salazar Ospina
// - Amy Sofia Rosas Diaz
// - Brayan Stiven Tobón Foronda
// - Sarai Restrepo Rodríguez

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  static final myNewFont = GoogleFonts.pressStart2p(
    textStyle: const TextStyle(color: Colors.black, letterSpacing: 3),
  );
  static final myNewFontWhite = GoogleFonts.pressStart2p(
    textStyle: const TextStyle(color: Colors.white, letterSpacing: 3),
  );

  static final myNewFontCyan = GoogleFonts.pressStart2p(
    textStyle: const TextStyle(color: Color(0xFF00FFFF), letterSpacing: 3),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2E004B),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Center(
                child: Text(
                  "TIC TAC TOE",
                  style: myNewFontWhite.copyWith(fontSize: 30),
                ),
              ),
              const SizedBox(height: 20),
              AvatarGlow(
                endRadius: 140.0,
                duration: const Duration(seconds: 2),
                glowColor: const Color(0xFF00FFFF), 
                repeat: true,
                repeatPauseDuration: const Duration(seconds: 1),
                startDelay: const Duration(milliseconds: 1000),
                child: CircleAvatar(
                  backgroundColor:
                      const Color(0xFF2E004B), 
                  radius: 80.0,
                  child: Image.asset(
                    'lib/images/tictactoelogo.png',
                    color: const Color(0xFFFF00FF),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "UdeA",
                style: myNewFontCyan.copyWith(fontSize: 20),
              ),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF00FF),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text('JUGAR', style: myNewFontWhite),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}