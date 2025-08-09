import 'package:flutter/material.dart';
import 'package:notes_app/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(), //to make the action button circular
          backgroundColor: Colors.tealAccent,
          foregroundColor: Colors.black,
          onPressed: () {},
          child: Icon(
            Icons.add,
          ),
        ),
        body: HomeViewBody(),
      ),
    );
  }
}
