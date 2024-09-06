import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/completed_screen.dart';
import 'package:todo_app/edit_screen.dart';
import 'package:todo_app/theme_manager.dart';

class TaskCard extends StatelessWidget {
   TaskCard({
    super.key,
    this.isComplete = false
  });
  bool isComplete ;


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 11),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        child: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TODO TITLE',
                  style: TextStyle(
                      fontSize: 14,
                    color: ColorManager.primary,

                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'TODO SUB TITLE',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            const Spacer(),
            isComplete ?
            const Spacer()
                :
            Row(
              children: [
                InkWell(
                  child: SvgPicture.asset(
                  "assets/icons/Pencil.svg",
                    height: 28,
                  ),
                  onTap: () {
                    Navigator.push(context,  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const EditScreen(),
                    ),);

                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: InkWell(
                    child: SvgPicture.asset(
                    "assets/icons/Trash.svg",
                      height: 28,
                    ),
                  ),
                ),
                InkWell(
                  child: SvgPicture.asset(
                  "assets/icons/CheckCircle.svg",
                  height: 28,),
                  onTap: () {
                    Navigator.push(context,  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const CompletedScreen(),
                    ),);
                  },

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
