


class TranslateModel{
  final String title;
  final int languageId;

  TranslateModel({required this.title, required this.languageId});

  factory TranslateModel.fromMap(Map<String,dynamic> data){
    return TranslateModel(
    title:data['text'],
    languageId:data['languageId'],
    );
  }
}