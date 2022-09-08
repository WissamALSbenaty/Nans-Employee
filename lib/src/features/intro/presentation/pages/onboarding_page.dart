import 'package:merit_driver/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:merit_driver/src/features/intro/presentation/widgets/on_boarding.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  int selectedPage = 0;
  final pageController = PageController(
    initialPage: 0,
  );

  List<String> titles=[

  ],
  descriptions=[

  ],
    animationPaths= [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: SizeConfig.screenHeight,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) => setState(() {
                  selectedPage = index;
                }),
                children: [

                  for(int i=0;i<titles.length;i++)
                  OnBoarding(
                    pageNumber: i,
                    title: titles[i],
                    animationPath: animationPaths[i],
                    description: descriptions[i],
                  ),
                ],
              ),
            ),


            const CustomSizedBox(
              height: 16,
            ),
            /*MainButton(
              title: "Let’s Start",
              onPressed: () =>showCustomBottomSheet(context, const StartAuthWidget(title: "Sign up for a faster checkout experience or explore Etloob as a guest",), [0.7])
            ),*/
            const CustomSizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
