import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            'Assets/sportsnews.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Manchester United Droped a Defensive Master Class against Liverpool at Anfield',
          style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Manchester United Droped a Defensive Master Class against Liverpool at Anfield',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
