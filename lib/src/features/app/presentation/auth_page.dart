

import 'package:auto_route/auto_route.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/presentation/widgets/base_data_loader.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/Home/presentation/pages/home_page_navigation.dart';
import 'package:flutter/material.dart';
import 'package:nans/src/features/auth/presentation/pages/login_page.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
   const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>with StateControllerCreatorMixin<AppController,AuthPage> {

  @override
  void initState() {
    createdController.notificationsManager.initFirebaseMessaging();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseDataLoader(
          dataLoader: createdController,
          onFailLoading: createdController.loadData,
          dataGetter: ()=>createdController.userProfileModel,
          childBuilder: (data)=>
          data==null ? const LoginPage():const HomePageNavigation()),
    );
  }
}
