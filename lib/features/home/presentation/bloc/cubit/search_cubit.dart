import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/helpers/search_helper.dart';

class SearchCubit<T> extends Cubit<List<T>> {
  SearchCubit() : super([]);

  void filterSearchResults(
      List<T> items, String value, String Function(T) getSearchableValue) {
    final searchResults = SearchHelper.search(items, value, getSearchableValue);
    emit(searchResults);
  }
}
