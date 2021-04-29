import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';

class QuizCarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
          border: Border.fromBorderSide(BorderSide(color: AppColors.border))),
          child: Column(
            children: [
              Container(
                height: 40,
                width: 40,
                color: Colors.red,
              )
            ],
          ),
    );
  }
}
