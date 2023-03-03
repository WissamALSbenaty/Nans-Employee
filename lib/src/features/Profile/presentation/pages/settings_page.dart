
import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/controllers/app_controller.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/dialogs/custom_text_field_dialog.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/validators/not_empty_validator.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/util/constants.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:etloob/src/features/Profile/presentation/sheets_and_popups/logout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_redirect/store_redirect.dart';



class SettingsPage extends StatefulWidget {


  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with StateStoreCreatorMixin<AppController,SettingsPage>  {




  @override
  Widget build(BuildContext context) {
        return Scaffold(


          body: SingleChildScrollView(
            padding: EdgeInsets.all( 16.r,),
            child: Column(
              children: [
              ],
            ),
          ),

        );
  }
}
