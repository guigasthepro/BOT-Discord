import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget  {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      centerTitle: true,
      title: Text(title),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}