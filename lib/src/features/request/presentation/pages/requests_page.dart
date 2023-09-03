import 'package:nans/src/core/presentation/style.dart';
import 'package:flutter/material.dart';
import 'package:nans/src/core/presentation/widgets/custom_tab_bar.dart';
import 'package:nans/src/features/request/presentation/widgets/current_request_page.dart';
import 'package:nans/src/features/request/presentation/widgets/history_page.dart';


class RequestsPage extends StatelessWidget {
   RequestsPage({Key? key}) : super(key: key);
   final List<String> titles=['Available Requests','History'];


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: titles.length,
        initialIndex: 0,
        child: Scaffold(
          backgroundColor: AppStyle.blue,
          appBar: AppBar(
            title: Text('Requsets'),
            backgroundColor: AppStyle.primary,
          ),
          body:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTabBar(titles: titles,isScrollable: false),
              Expanded(
                  child:TabBarView(
                    children: [
                      CurrentRequestPage(),
                      HistoryPage(),
                    ],
                  )
              )
            ],
          )
        ));
      }
}