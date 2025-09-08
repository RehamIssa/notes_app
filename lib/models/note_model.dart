import 'package:hive/hive.dart';
part 'note_model.g.dart'; //g means generator


@HiveType(typeId: 0) //put any number from 0 to 255
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  NoteModel({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}

/* 
To generate a type adaptor
1- put part 'note_model.g.dart'; which include the name of the current file
2-add @HiveType(typeId:0) for the class
3-add @HiveField(index) for each attribute in the class
 and each one should have a unique value
 4- open the terminal and run this command: 
 flutter packages pub run build_runner build
 */