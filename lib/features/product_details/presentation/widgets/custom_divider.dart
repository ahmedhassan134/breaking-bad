import 'package:first/core/utils/colors.dart';
import 'package:flutter/material.dart';
class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key,required this.value}) : super(key: key);
final double value;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: MyColors.myYellow,
      height: 30,
      endIndent: value,
      thickness: 2,
    );
  }
}
