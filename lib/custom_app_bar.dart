import 'package:flutter/material.dart';
import 'package:todo_app/theme_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
        required this.title,
        this.actionIcon,
        this.actionTap,
        this.actions});

  final String title;
  final IconData? actionIcon;
  final Function()? actionTap;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.primary,
      title: Text(
        title,
        style:const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 20.0,
        ),
      ),
      actions: actions,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
