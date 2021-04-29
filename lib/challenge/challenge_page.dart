import 'package:dev_quiz/challenge/widgets/quiz_indicator/quiz_indicator_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
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
          child: QuestionIndicatorWidget()),
        preferredSize: Size.fromHeight(60),)
        ,
    );
  }
}