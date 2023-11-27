import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/search_cubit/cubit/search_cubit.dart';
import 'custom_note_item.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          var notes = BlocProvider.of<SearchCubit>(context).searchResults;
          return SafeArea(
            child: Scaffold(
              body: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomTextField(
                    controller: searchController,
                    hint: 'Search for a note',
                    onChanged: (value) {
                      BlocProvider.of<SearchCubit>(context).searchInHive(value);
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: notes?.length ?? 0,
                      itemBuilder: (context, index) =>
                          NoteItem(noteModel: notes![index])),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
