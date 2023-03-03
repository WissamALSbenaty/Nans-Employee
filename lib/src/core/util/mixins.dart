

import 'package:etloob/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';


mixin StateStoreCreatorMixin<T extends Store,F extends StatefulWidget> on State<F>{
  final T createdStore = getIt<T>();
}

mixin WidgetStoreCreatorMixin<T extends Store> on Widget{
  final T createdStore = getIt<T>();
}

mixin StoreProviderMixin<T extends Store,F extends StatefulWidget>on State<F>{
  late T providedStore ;
  bool isFirstDependency=true;
  @override
  void didChangeDependencies() {
    if(isFirstDependency) {
      providedStore = Provider.of<T>(context);
      isFirstDependency=false;
    }
    super.didChangeDependencies();
  }
}


