import 'package:flutter/material.dart';
import 'package:todo_app/task_card.dart';
import 'package:todo_app/theme_manager.dart';

import 'custom_app_bar.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: const CustomAppBar(
        title: "Completed Task",
      ),
      body: ListView.builder(
        itemBuilder:(context, index) =>  TaskCard(isComplete: true,),
        itemCount: 5,
      ),

    );
  }
}
