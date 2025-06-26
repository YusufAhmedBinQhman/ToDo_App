import 'package:flutter/material.dart';

class CustContainerToDo extends StatelessWidget {
  double? height;
  Widget? child;
  CustContainerToDo({super.key, required this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3),
      padding: EdgeInsets.all(10),
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff282828),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
