import 'package:adv_basics/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (data['user_answer'] == data['correct_answer'])
                        ? quizGreen
                        : quizRed,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.lato(
                      color: quizBlack,
                      fontSize: heading2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: gapSmall),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.lato(
                          color: quizWhite,
                          fontSize: text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: gapTiny),
                      Text(
                        'Your answer: ${data['user_answer']}',
                        style: GoogleFonts.lato(
                          color: (data['user_answer'] == data['correct_answer'])
                              ? quizGreen
                              : quizRed,
                          fontSize: text,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Correct answer: ${data['correct_answer']}',
                        style: GoogleFonts.lato(color: quizGreen),
                      ),
                      SizedBox(height: gapTiny),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
