import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController _pageController;

  int _currentPage = 0;

  // List of texts for each screen
  final List<String> screenTexts = [
    "Worried about some\nsymptoms you have?",
    "Ask a doctor online",
    "Consult only with\n trusted professionals",
    // Add more texts for additional screens
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) => NewWidget(
                image: "asset/doctor.svg",
                title: screenTexts[
                    index], // Use the text based on the current index
                nextPage: () {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
                controller: _pageController,
              ),
              itemCount: screenTexts.length, // Set the total number of screens
            ),
          ),
        ),
      ),
    );
  }
}


class NewWidget extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback nextPage;
  final PageController controller; // Add the controller as a parameter

  NewWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.nextPage,
    required this.controller, // Accept the controller as a parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        SvgPicture.asset(
          image,
          height: 250,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: controller, // Use the controller here
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.purple),
            ),
            SizedBox(
              height: 60,
              width: 60,
              child: ElevatedButton(
                onPressed: nextPage,
                child: SvgPicture.asset("asset/right.svg"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF50008E),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}


