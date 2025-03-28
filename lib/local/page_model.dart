class PageModel{
  String pageName;
  dynamic superKey;
  PageModel({required this.pageName, required this.superKey});
  factory PageModel.fromPage(Map<String, dynamic> page){
    return PageModel(pageName: page['pageName'], superKey: page['superKey']);
  }
}