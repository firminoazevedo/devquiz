import 'package:dev_quiz/challenge/next_button/next_button_widget.dart';
import 'package:dev_quiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:dev_quiz/challenge/widgets/quiz_indicator/quiz_indicator_widget.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;
  ChallengePage({required this.questions});
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.close)),
              QuestionIndicatorWidget(),
            ],
          )),
        preferredSize: Size.fromHeight(78),),
        body: QuizWidget(question: widget.questions[0],),
        bottomNavigationBar: SafeArea(
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: NextButtonWidget.white(label: "Fácil", onTap: (){},)),
                SizedBox(width: 10,),
                Expanded(child: NextButtonWidget.green(label: "Confirmar", onTap: (){},)),
              ],
            ),
          ),
        ),
    );
  }
}