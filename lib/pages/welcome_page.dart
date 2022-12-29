import 'package:flutter/material.dart';
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
                  margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        MediumTextWidget(text: "HIr"),
                        MediumTextWidget(
                          text: "Country",
                          size: 30,
                        ),
                        SizedBox(
                          width: 250,
                          child: MediumTextWidget(text: "fsdgdfhgf"),
                        )
                      ],
                    )
                  ]),
                ),
              );
            }));
  }
}
