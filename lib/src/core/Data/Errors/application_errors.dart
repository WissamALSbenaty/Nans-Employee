

import 'package:etloob/src/core/presentation/assets.dart';

import 'custom_error.dart';

class EmptyNotificationError extends CustomError {
  EmptyNotificationError() :super(imagePath:Assets.noNotifications,errorMessage:'No Notifications to show' );
}
class EmptyBrandsError extends CustomError {
  EmptyBrandsError() :super(imagePath:Assets.searchNotFound,errorMessage:'No Brands To Show' );
}
class EmptyVendorsError extends CustomError {
  EmptyVendorsError() :super(imagePath:Assets.searchNotFound,errorMessage:'No Vendors To Show' );
}
class EmptyOrdersError extends CustomError {
  EmptyOrdersError() :super(imagePath:Assets.searchNotFound,errorMessage:'No Orders to show' );
}

class EmptySearchError extends CustomError {
  EmptySearchError() :super(imagePath:Assets.searchNotFound,errorMessage:'No search results found , make sure you do not have any typos and try again' );
}

class FilterPricesError extends CustomError {
  FilterPricesError() :super(imagePath:Assets.searchNotFound,errorMessage:'Maximum Price is Less Than Minimum Price' );
}
