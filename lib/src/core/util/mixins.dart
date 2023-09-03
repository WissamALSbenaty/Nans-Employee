

import 'package:nans/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:provider/provider.dart';


mixin StateControllerCreatorMixin<T extends BaseController,F extends StatefulWidget> on State<F>{
  final T createdController = getIt<T>();

  @override
  void dispose() {
    createdController.dispose();
    super.dispose();
  }
}

mixin WidgetControllerCreatorMixin<T extends BaseController> on Widget{
  final T createdController = getIt<T>();

}

mixin ControllerProviderMixin<T extends BaseController,F extends StatefulWidget>on State<F>{
  late T providedController ;
  bool isFirstDependency=true;
  @override
  void didChangeDependencies() {
    if(isFirstDependency) {
      providedController = Provider.of<T>(context);
      isFirstDependency=false;
    }
    super.didChangeDependencies();
  }

  @override
  void dispose(){
    providedController.dispose();
    super.dispose();
  }
}


