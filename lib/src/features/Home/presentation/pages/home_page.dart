

import 'package:auto_route/auto_route.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/Data/models/login_model.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:nans/src/core/presentation/snakebars/snack_bar_messages.dart';
import 'package:nans/src/core/presentation/widgets/base_data_loader.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/core/util/notification_manager.dart';
import 'package:nans/src/features/Home/presentation/pages/home_page_navigation.dart';
import 'package:nans/src/features/auth/presentation/pages/confirm_phone_number_page.dart';
import 'package:nans/src/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget with WidgetStoreCreatorMixin<AppController>{

  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  bool isFirstDependency=true;

  @override
  void didChangeDependencies() {
    if(isFirstDependency){
      isFirstDependency=false;
      getIt<NotificationsManager>().initFirebaseMessaging();

    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseDataLoader(
          dataLoader: widget.createdStore,
          onFailLoading: widget.createdStore.loadData,
          dataGetter: ()=>widget.createdStore.applicationTranslationModel,
          childBuilder: (data)=> widget.createdStore.currentUser==null?
                 LoginPage():
              widget.createdStore.userProfileModel?.accountConfirmation==false?
              ConfirmPhoneNumberPage(args: ConfirmEmailPageArguments(
                email:widget.createdStore.currentUser!.email,
                afterSuccessSubmitting: ({required String otpCode,required String email}) async{

                  widget.createdStore.login(LoginModel(email:widget.createdStore.currentUser!.email,
                      password: widget.createdStore.currentUser!.password));

                  BottomSnackBar.show(SnackBarMessages.registeringSuccess, ToastType.success);

                  context.clearData();
                  AutoRouter.of(context).popUntilRoot();
                  AutoRouter.of(context).replace(HomeRoute());
                }, isOtpFromBackend: true,

              ))
          :const HomePageNavigation()),
    );
  }
  @override
  void dispose() {
    super.dispose();
  }
}
