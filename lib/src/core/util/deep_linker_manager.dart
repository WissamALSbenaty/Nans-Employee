import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:uni_links/uni_links.dart';


@singleton
class DeepLinkerManager {



  StreamSubscription? _streamSubscription;

  Future<void> init(BuildContext context) async {
    initColdStart(context);
    initListener(context);
  }

  Future<void> initColdStart(BuildContext context)async {
      try {
        final Uri? initialURI = await getInitialUri();

        if (initialURI != null) {
          handleLink(initialURI.path.split('/'),context);
        } else {
            //print("Null Initial URI received");
        }
      } on PlatformException {
          //print("Failed to receive initial uri");
      } on FormatException {

          //print('Malformed Initial URI received');
    }
  }


  Future<void> initListener(BuildContext context) async {
    // ... check initialUri

    // Attach a listener to the stream
    _streamSubscription = uriLinkStream.listen((Uri? uri) {
      // Use the uri and warn the user, if it is not correct
      if(uri!=null) {
        handleLink(uri.path.split('/'),context);
      }

    }, onError: (err) {
      // Handle exception by warning the user their action did not succeed
        //print('Error in Deep Linker Listner $err');

    });

    // NOTE: Don't forget to call _sub.cancel() in dispose()
  }


  void handleLink(List<String> splitedLink,BuildContext context){
   // int productIndex=splitedLink.indexOf("products");
    //if(productIndex!=-1){
       /// Product Link


  }


  void dispose(){
    _streamSubscription?.cancel();
  }

}
