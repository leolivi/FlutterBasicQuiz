import 'package:adv_basics/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, // to center the content vertically
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: quizWhite,
          ),
          const SizedBox(height: gapLarge),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: quizWhite,
              fontSize: heading1,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: gapLarge),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: quizWhite),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
