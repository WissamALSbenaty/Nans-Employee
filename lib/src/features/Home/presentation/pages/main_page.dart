import 'package:etloob/src/core/controllers/search_controller.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_tab_bar.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class EtloobPage extends StatefulWidget with WidgetStoreCreatorMixin<SearchController> {
   EtloobPage({Key? key}) : super(key: key);

  @override
  State<EtloobPage> createState() => _EtloobPageState();
}

class _EtloobPageState extends State<EtloobPage>
    with SingleTickerProviderStateMixin,  AutomaticKeepAliveClientMixin{
  late TabController tabController;

  @override
  void initState() {
    tabController=TabController(length: 5, vsync:this);
    tabController.addListener(() =>changeNavigationBarItem(tabController.index));
    super.initState();
  }

  int selectedNavigationBarItem=0;

  void changeNavigationBarItem(int selectedIndex){
    tabController.animateTo(selectedIndex);
    setState(() {
      selectedNavigationBarItem=selectedIndex;
    });
  }

  final List<String> titles=['Home','Explore','Offers','Brands','Vendors'];


  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: AppColors.blue,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Container(
            color: AppColors.whiteColor,
            child: CustomTabBar(
              controller: tabController,
                titles: titles),
          ),

               Observer(
                 builder: (_) => Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
           ],
            ),
          )
               ),
        ],
      ),);
  }

  @override
  bool get wantKeepAlive => true;



}
