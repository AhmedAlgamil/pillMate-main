class SearchHelper {
  //! give it the list which you wanna to search in , the value which you wanna to search for , a function return the string which we wanna to search within
  static List<T> search<T>(
      List<T> items, String value, String Function(T) getSearchableValue) {
    List<T> results = [];
    if (value.isEmpty) {
      //if user not search for any thing we return all list items
      results = items;
    } else {
      //if user search for any latter or word .. then filter the list and return the items which contain the user word
      results = items
          .where((element) => getSearchableValue(element)
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    }
    return results;
  }
}
