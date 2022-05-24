import 'package:flutter/material.dart';

class barWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('historial'),
      backgroundColor: Colors.deepPurpleAccent,
      actions: [
        IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => Navigator.pushNamed(context, '/'))
      ],
    );
  }
}
