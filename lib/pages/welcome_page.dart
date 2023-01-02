import 'package:flutter/material.dart';
import 'package:travelapp_bloc_cubit/widget/button_widget.dart';
import 'package:travelapp_bloc_cubit/widget/text_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List welcomeimages = [
    'welcome_1.png',
    'welcome_2.png',
    'welcome_3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: welcomeimages.length,
            itemBuilder: (context, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/" + welcomeimages[index]),
                        fit: BoxFit.scaleDown)),
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const MediumTextWidget(text: "HIr"),
                            const MediumTextWidget(
                              text: "Country",
                              size: 30,
                            ),
                            const SizedBox(height: 5),
                            const SizedBox(
                              width: 250,
                              child: MediumTextWidget(text: "fsdgdfhgf"),
                            ),
                            const SizedBox(height: 20),
                            ButtonWidget(
                              width: 100,
                            )
                          ],
                        ),
                        Column(
                          children: List.generate(3, (indexDots) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 2),
                              width: 8,
                              height: index == indexDots ? 25 : 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: index == indexDots
                                      ? Colors.purple
                                      : Colors.purple.withOpacity(0.3)),
                            );
                          }),
                        )
                      ]),
                ),
              );
            }));
  }
}
