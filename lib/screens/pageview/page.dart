import 'package:fi/custom_widget/pages.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../const.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: MyPageView(),
    );
  }
}

class MyPageView extends StatelessWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        PageView(
          controller: controller,
          children: const [
            Body(
              image: "images/page1.png",
              outertext: "Jennifer Kingsley",
              innertext: " exploring the new range of winter fashion wear",
              ranking: "1",
            ),
            Body(
              ranking: "2",
              image: "images/page2.png",
              outertext: "Jimmy Chuka ",
              innertext: "exploring new spring sweater collection",
            ),
            Body(
              ranking: "3",
              image: "images/page3.png",
              outertext: "Christain Lobi ",
              innertext: " showing us his new summer beach wears",
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ExpandingDotsEffect(
                activeDotColor: primaryColor,
                dotHeight: 8,
                dotWidth: 8,
                dotColor: Colors.white),
          ),
        ),
      ],
    );
  }
}
