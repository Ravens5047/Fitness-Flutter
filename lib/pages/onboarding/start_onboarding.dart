import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/common/colo_extension.dart';
import 'package:flutter_fitness_app/common_widget/round_button.dart';
import 'package:flutter_fitness_app/pages/onboarding/onboarding.dart';

class StartOnBoarding extends StatefulWidget {
  const StartOnBoarding({super.key});

  @override
  State<StartOnBoarding> createState() => _StartOnBoardingState();
}

class _StartOnBoardingState extends State<StartOnBoarding> {
  bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          width: media.width,
          decoration: BoxDecoration(
            gradient: isChangeColor
                ? LinearGradient(
                    colors: TColor.primaryG,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                "Fitness",
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Everybody Can Train",
                style: TextStyle(
                  color: TColor.gray,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 20.0),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: RoundButton(
                      title: "Get Started",
                      type: isChangeColor
                          ? RoundButtonType.textGradient
                          : RoundButtonType.bgGradient,
                      onPressed: () {
                        if (isChangeColor) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const OnBoardingView()));
                        } else {
                          setState(() {
                            isChangeColor = true;
                          });
                        }
                      },
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
