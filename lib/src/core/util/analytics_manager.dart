
// ignore_for_file: unnecessary_overrides

import 'package:etloob/dependencies.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class AnalyticsManager {
    final FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.instance;
  final FirebaseNavigationTracer tracer=FirebaseNavigationTracer();

    List<FirebaseAnalyticsObserver> getObservers() => [FirebaseAnalyticsObserver(analytics: firebaseAnalytics)];
  List<FirebaseNavigationTracer> getFirebaseTracer()=>[tracer];

  void logEvent(String eventName, {Map<String, Object>? parameters})async{
     firebaseAnalytics.logEvent(name: eventName,parameters: parameters);
  }
}

class FirebaseNavigationTracer extends NavigatorObserver{
  @override
  void didPop(Route route, Route? previousRoute) {
     getIt<AnalyticsManager>().getObservers().forEach((observer) {
     observer.didPop(route, previousRoute);
         });

    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
      getIt<AnalyticsManager>().getObservers().forEach((observer) {
     observer.didRemove(route, previousRoute);
     });


    super.didRemove(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
     getIt<AnalyticsManager>().getObservers().forEach((observer) {
      observer.didPush(route, previousRoute);
     });


    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
     getIt<AnalyticsManager>().getObservers().forEach((observer) {
      observer.didReplace(newRoute:  newRoute,oldRoute:  oldRoute);
      });


   super.didReplace(newRoute: newRoute,oldRoute:  oldRoute);
  }
}
