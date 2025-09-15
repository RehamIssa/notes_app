import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/home_view.dart';

void main() async {
  await Hive
      .initFlutter(); //focus on using initFlutter b/c we are working with flutter
  await Hive.openBox(
      kNotesBox); //the box is something like a collection to save the data in it
  Hive.registerAdapter(
      NoteModelAdapter()); //to tell hive that the NoteModel is the one tp be saved in hive
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Changing the app to dark mode
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const HomeView(),
    );
  }
}
