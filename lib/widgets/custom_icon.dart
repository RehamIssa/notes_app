import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
    Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(34, 255, 255, 255),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                size: 28,
              )),
        ));
  }
}
