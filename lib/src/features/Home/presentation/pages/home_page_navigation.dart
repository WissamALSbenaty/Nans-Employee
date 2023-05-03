
import 'package:etloob/src/features/Home/presentation/pages/main_page.dart';
import 'package:etloob/src/features/Home/presentation/widgets/home_navigation_bar.dart';
import 'package:etloob/src/features/Profile/presentation/pages/my_profile_page.dart';
import 'package:flutter/material.dart';

class HomePageNavigation extends StatefulWidget {

  const HomePageNavigation({Key? key}) : super(key: key);


  @override
  HomePageNavigationState createState() => HomePageNavigationState();
}

class HomePageNavigationState extends State<HomePageNavigation>
    with SingleTickerProviderStateMixin  {
late TabController tabController;

  @override
  void initState() {
    tabController=TabController(length: 5, vsync:this,initialIndex: 2);
    tabController.addListener(() =>changeNavigationBarItem(tabController.index));
    super.initState();
  }

  int selectedNavigationBarItem=2;

  void changeNavigationBarItem(int selectedIndex){
    tabController.animateTo(selectedIndex);
    setState(() {
      selectedNavigationBarItem=selectedIndex;
    });
  }

  Future<bool> popPage()async{
    if(selectedNavigationBarItem!=2) {
      changeNavigationBarItem(2);
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
                    EtloobPage(),
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