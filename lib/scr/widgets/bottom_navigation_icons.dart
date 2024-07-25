import 'package:flutter/material.dart';

import '../helpers/style.dart';

class BottomNavIcon extends StatelessWidget {
  final IconData icon;
  final String name;
  final void Function() onTap;

  BottomNavIcon({
    required this.icon,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 30.0,
            color: black,
          ),
          SizedBox(height: 2),
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              color: black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
