import 'package:flutter/material.dart';
import 'package:todo_app/theme_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
  super.key,
  required this.text,
  required this.onPressed,
  this.color = ColorManager.primary,
  this.minWidth = double.infinity,
  this.height= 65,
});
final String text;
final Color? color;
final Function()? onPressed;
final double minWidth;
final double height;
@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 20),
      minWidth: minWidth,
      height: height,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      color: color,
      textColor: Colors.white,
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(fontSize: 18.0),
      ),
    ),
  );
}
}
