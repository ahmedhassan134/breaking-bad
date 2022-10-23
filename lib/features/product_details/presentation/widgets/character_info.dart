import 'package:first/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CharacterInfo extends StatelessWidget {
  const CharacterInfo({Key? key, required this.title,required this.subTitle}) : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(

        children: [
          TextSpan(text: title,style:  TextStyle(color: MyColors.myWhite,fontSize: 18,fontWeight: FontWeight.bold)),
          TextSpan(text: subTitle,style: TextStyle(
            fontSize: 16,
            color: MyColors.myYellow
          ))
        ],
      ),
    );
  }
}
