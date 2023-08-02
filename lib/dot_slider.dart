import 'package:flutter/material.dart';
class DotSlider extends StatelessWidget {
  const DotSlider({required this.index,required this.currentPage,Key? key}) : super(key: key);
  final int index;
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      width:  7 ,
      height: 7,
      decoration:  BoxDecoration(
          color: index == currentPage ? Colors.black : const Color(0xFFC4C4C4),
          borderRadius: BorderRadius.circular(3)
      ), duration:const Duration(milliseconds: 200),
    );
  }
}
