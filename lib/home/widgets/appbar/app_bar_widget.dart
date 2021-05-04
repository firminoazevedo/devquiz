import 'package:dev_quiz/core/app_config.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/home/widgets/scorecard/scorecard_widget.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({required this.user})
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    height: 161,
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text("Olá, Daniel", style: AppTextStyles.title),
                        Text.rich(
                          TextSpan(
                              text: "Olá, ",
                              style: AppTextStyles.title,
                              children: [
                                TextSpan(
                                    text: user.name,
                                    style: AppTextStyles.titleBold)
                              ]),
                        ),
                        Container(
                          height: 58,
                          width: 58,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.fromBorderSide(BorderSide(
                                  color: AppColors.purple, width: 2)),
                              image: DecorationImage(
                                  image: NetworkImage(user.photoUrl))),
                        )
                      ],
                    ),
                  ),
                  Align(alignment: Alignment(0, 1), child: ScoreCardWidget())
                ],
              ),
            ));
}
