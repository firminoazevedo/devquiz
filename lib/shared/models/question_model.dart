import 'package:dev_quiz/shared/models/answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answer;

  QuestionModel({required this.title, required this.answer}) : assert(answer.length == 4);
}