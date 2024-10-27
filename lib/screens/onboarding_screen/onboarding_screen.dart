import 'package:ecommerceapp/screens/login_screen/login_screen.dart';
import 'package:ecommerceapp/utils/app_colors.dart';
import 'package:ecommerceapp/utils/app_mediaquery.dart';
import 'package:ecommerceapp/utils/sizedbox_extension.dart';
import 'package:ecommerceapp/utils/text_style.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _pageIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppMediaQuery.screenHeightRatio(context, 50),
                width: double.infinity,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    //     alignment: Alignment.center,
                    transform: Matrix4.rotationZ(-0.2),
                    child: Image.asset(
                      'assets/product_images/shoe.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: AppMediaQuery.screenHeightRatio(context, 30),
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  itemCount: demoData.length,
                  onPageChanged: (value) {
                    setState(() {
                      _pageIndex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    final data = demoData[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.title, style: AppTextstyle.heading1Style),
                        5.ph,
                        Text(
                          data.description,
                          style: AppTextstyle.heading2Style,
                        ),
                        5.ph,
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        demoData.length + 1,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: DotIndicator(
                            isActive: index == _pageIndex,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (demoData[_pageIndex].id == 2) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      } else {
                        setState(() {
                          _pageIndex++;
                        });

                        _pageController.animateToPage(
                          _pageIndex,
                          duration: const Duration(milliseconds: 350),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: const StadiumBorder(),
                    ),
                    child: Text(
                      demoData[_pageIndex].buttonName,
                      style: const TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

// Dot indicator widget
class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 7,
      width: isActive ? 30 : 9,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}

class OnBoard {
  final int id;
  final String title, buttonName, description;

  OnBoard({
    required this.id,
    required this.title,
    required this.buttonName,
    required this.description,
  });
}

final List<OnBoard> demoData = [
  OnBoard(
    id: 1,
    title: 'Start Journey\nWith shoes',
    description: "Smart, Gorgeous & Fashionable Collection",
    buttonName: "Get Started",
  ),
  OnBoard(
    id: 2,
    title: 'Follow Latest\nStyle Shoes',
    description: "There Are Many Beautiful And Attractive Plants To Your Room",
    buttonName: "Next",
  ),
];
