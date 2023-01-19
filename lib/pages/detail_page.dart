import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp_bloc_cubit/widget/text_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                  child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/mountain.jpeg'),
                      fit: BoxFit.cover),
                ),
              )),
              Positioned(
                  top: 70,
                  left: 20,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (() {}),
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                      )
                    ],
                  )),
              Positioned(
                  top: 320,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BoldTextWidget(
                              text: 'Yosemite',
                              color: Colors.black.withOpacity(0.5),
                              size: 23,
                            ),
                            BoldTextWidget(
                              text: "\$250",
                              color: Colors.deepPurple,
                              size: 23,
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.deepPurple,
                            ),
                            SizedBox(width: 5),
                            MediumTextWidget(
                              text: "USA, California",
                              color: Colors.deepPurple,
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.orange[500],
                                );
                              }),
                            ),
                            SizedBox(width: 5),
                            MediumTextWidget(
                              text: "(4.0)",
                              color: Colors.deepPurple,
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
