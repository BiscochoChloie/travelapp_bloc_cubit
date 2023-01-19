import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp_bloc_cubit/widget/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "balloning.png": "Balloning",
    "hiking.png": "Hiking",
    "kayaking.png": "Kayaking",
    "snorkling.png": "Snorkling"
  };

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.5)),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            BoldTextWidget(
              text: "Discover",
              size: 25,
            ),
            SizedBox(height: 20),
            TabBar(
                labelPadding: EdgeInsets.only(left: 5, right: 20),
                controller: tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator:
                    CircleTabIndicator(color: Colors.deepPurple, radius: 4),
                tabs: [
                  const Tab(text: "Places"),
                  const Tab(text: "Inspiration"),
                  const Tab(text: "Emotions"),
                ]),
            Container(
              height: 300,
              width: double.maxFinite,
              child: TabBarView(controller: tabController, children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.only(left: 5, right: 10, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/mountain.jpeg'),
                                fit: BoxFit.cover)));
                  },
                ),
                Text('inspiration'),
                Text('emotion')
              ]),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoldTextWidget(
                  text: "Explore more",
                  size: 20,
                ),
                MediumTextWidget(
                  text: "See All",
                  color: Colors.deepPurple,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: double.maxFinite,
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/' +
                                          images.keys.elementAt(index)),
                                      fit: BoxFit.cover))),
                          SizedBox(height: 5),
                          MediumTextWidget(text: images.values.elementAt(index))
                        ],
                      ),
                    );
                  })),
            ),
          ],
        ),
      ),
    ));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
    // throw UnimplementedError();
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 3, configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
