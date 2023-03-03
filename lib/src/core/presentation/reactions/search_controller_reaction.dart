

import 'package:etloob/src/core/controllers/search_controller.dart';
import 'package:mobx/mobx.dart';

class SearchControllerReaction{
  final SearchController searchController;
  final void Function(String?) onSearchStringChanged;

  SearchControllerReaction(this.searchController, this.onSearchStringChanged);

  ReactionDisposer getReaction(){
    
    return reaction<String?>((_) =>searchController.searchString, onSearchStringChanged
    );

  }

}