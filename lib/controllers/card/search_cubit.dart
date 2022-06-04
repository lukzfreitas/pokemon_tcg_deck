import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<String> {
  SearchCubit(String initialState) : super(initialState);

  void changeSearch(String value) {
    if (value.isNotEmpty) {
      emit(value);
    }
  }
}
