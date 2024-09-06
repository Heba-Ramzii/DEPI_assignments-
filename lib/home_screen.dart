import 'package:flutter/material.dart';
import 'package:todo_app/add_screen.dart';
import 'package:todo_app/custom_app_bar.dart';
import 'package:todo_app/task_card.dart';
import 'package:todo_app/theme_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: const CustomAppBar(
        title: "TODO APP",
        actionIcon: Icons.calendar_today_outlined,
      ),
      body: ListView.builder(
          itemBuilder:(context, index) =>  TaskCard(),
        itemCount: 5,
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.push(context,  MaterialPageRoute<void>(
            builder: (BuildContext context) => const AddScreen(),
          ),);
        },
        backgroundColor: ColorManager.primary,
        child: const Icon(
            Icons.add,
          color: Colors.white,
        ),
       ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_rounded),
            label: 'All',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_rounded),
            label: 'Completed',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: ColorManager.primary,
      ),
    );
  }
}
