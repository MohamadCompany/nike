class DataBase {

  DataBase._();

  static DataBase? _instance;

  static DataBase getInstance () {
    _instance ??= DataBase._();

    return _instance!;
  }

  // factory DataBase() {
  //   if(_instance == null) {
  //     return _instance!;
  //   }
  //   return _instance!;
  // }
}