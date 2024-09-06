import 'package:flutter/material.dart';
import 'package:todo_app/custom_button.dart';

import 'custom_app_bar.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Add Task',),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children:[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Title',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Details',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            CustomButton(text: "Add", onPressed: (){},height: 50,),
          ],
        ),
      ),
    );
  }
}
