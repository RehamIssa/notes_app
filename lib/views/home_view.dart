import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => NotesCubit(),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            shape: CircleBorder(), //to make the action button circular
            backgroundColor: Colors.tealAccent,
            foregroundColor: Colors.black,
            onPressed: () {
              showModalBottomSheet(
                //to let the bottom sheet go above once click to write something
                isScrollControlled: true,
                //too change the border radius of the bottom sheet
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                },
              );
            },
            child: Icon(
              Icons.add,
            ),
          ),
          body: HomeViewBody(),
        ),
      ),
    );
  }
}
