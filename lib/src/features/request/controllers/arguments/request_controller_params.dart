


import 'package:nans/src/Data/models/request_model.dart';

class RequestControllerParams{
  final RequestModel request;
  final Future<void> Function() pageRefresher;

  RequestControllerParams({required this.request, required this.pageRefresher});

}