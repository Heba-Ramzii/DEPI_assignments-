import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_button.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Edit Task',),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(text: "Update", onPressed: (){},minWidth: 170,),
                CustomButton(text: "Cancel", onPressed: (){},minWidth: 170,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
