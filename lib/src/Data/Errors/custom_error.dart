


 class CustomError implements Exception{
  String errorMessage;
  String? imagePath;

  CustomError({required this.errorMessage, this.imagePath});
}