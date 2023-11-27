import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../../models/note_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
List<NoteModel>? searchResults;
   void searchInHive(String query) {
    final box = Hive.box<NoteModel>(kNotesBox);    
    searchResults  = box.values
          .where((element) =>
              element.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
          emit(SearchSuccess());
 
  }
}
