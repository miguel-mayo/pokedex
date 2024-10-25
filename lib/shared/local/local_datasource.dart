abstract class LocalDataSource<T> {
  T? _cache;

  void setCache(T cache) {
    _cache = cache;
    /*   try {
      if (kIsWeb) {
        Map<String, dynamic> map = (cache as dynamic).toJson();
        sharedPreferences.setString("user_data", jsonEncode(map));
      }
    } catch (e) {
      debugPrint(e.toString());
    } */
  }

  T? get() => _cache;
}
