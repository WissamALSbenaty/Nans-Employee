
import 'package:nans/src/features/Home/presentation/pages/main_page.dart';
import 'package:nans/src/features/Home/presentation/widgets/home_navigation_bar.dart';
import 'package:nans/src/features/Profile/presentation/pages/my_profile_page.dart';
import 'package:nans/src/features/request/presentation/pages/requests_page.dart';
import 'package:flutter/material.dart';

class HomePageNavigation extends StatefulWidget {

  const HomePageNavigation({Key? key}) : super(key: key);


  @override
  HomePageNavigationState createState() => HomePageNavigationState();
}

class HomePageNavigationState extends State<HomePageNavigation>
    with SingleTickerProviderStateMixin  {
late TabController tabController;

  int selectedNavigationBarItem=1;
  @override
  void initState() {
    tabController=TabController(length: 3, vsync:this,initialIndex: selectedNavigationBarItem);
    tabController.addListener(() =>changeNavigationBarItem(tabController.index));
    super.initState();
  }


  void changeNavigationBarItem(int selectedIndex){
    tabController.animateTo(selectedIndex);
    setState(() {
      selectedNavigationBarItem=selectedIndex;
    });
  }

  Future<bool> popPage()async{
    if(selectedNavigationBarItem!=1) {
      changeNavigationBarItem(1);
      return false;
    }
    else {
      return true;
    }

  }


  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: popPage,
        child: Scaffold(
              bottomNavigationBar:HomeNavigationBar(
                currentIndex: selectedNavigationBarItem,
                onTabItem: changeNavigationBarItem,),
              body: TabBarView(
                controller: tabController,
                children:    [
                  RequestsPage(),
                    const MainPage(),
                     MyProfilePage(),
                ],

        ),
    ));
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


}