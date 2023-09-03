
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_translation_model.freezed.dart';
part 'app_translation_model.g.dart';

@freezed
class AppTranslationModel with _$AppTranslationModel{

  const AppTranslationModel._();
  factory AppTranslationModel({
    required Map<String, String> translation
  })=_AppTranslationModel;

  factory AppTranslationModel.fromJson( Map<String,dynamic> data)=>_$AppTranslationModelFromJson(data);

  String translate(String word) => translation[word] ?? word;
}