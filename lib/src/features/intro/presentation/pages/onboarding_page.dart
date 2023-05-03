import 'package:auto_route/annotations.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/presentation/sheets/custom_bottomsheet.dart';
import 'package:etloob/src/core/presentation/widgets/custom_pages_indicator.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/presentation/widgets/main_button.dart';
import 'package:etloob/src/core/presentation/widgets/start_auth_widget.dart';
import 'package:etloob/src/features/intro/presentation/widgets/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage>{
  int selectedPage = 0;
  final pageController = PageController(
    initialPage: 0,
  );

  List<String> titles=[
    'Stay Home, Shop Home',
    'Gifts, clothes, groceries and much more',
    'Online payment, order tracking, sales & discounts'

  ],
  descriptions=[
    'What you need delivered to the comfort of your home',
    'Explore thousands of unique items, We tried to cover all your shopping needs in one app',
    'Pay online with your favorite method and track the status of your order online',

  ],
    animationPaths= [Assets.onBoarding1,Assets.onBoarding2,Assets.onBoarding3,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
            height: 812.h,
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

                CustomPagesIndicator(selectedPage: selectedPage, totalPages: 3),

                const CustomSizedBox(
                  height: 16,
                ),
                MainButton(
                    isLoading: false,
                  title: "Let’s Start",
                  onPressed: () =>showCustomBottomSheet(context,  StartAuthWidget(title: "Sign up for a faster checkout experience or explore Etloob as a guest",), [0.7])
                ),
                const CustomSizedBox(
                  height: 32,
                ),
              ],
            ),

    ));
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
