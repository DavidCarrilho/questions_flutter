import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.thumb_up_alt_outlined, size: 60),
          SizedBox(height: 18),
          Text('Parabéns!', style: TextStyle(fontSize: 28))
        ],
      ),
    );
  }
}
