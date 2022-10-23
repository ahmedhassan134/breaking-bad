import 'package:first/core/utils/colors.dart';
import 'package:flutter/material.dart';
class CheckInternetOrNot extends StatelessWidget {
  const CheckInternetOrNot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 100,),
          Text('can\'t connet.... check internet ',style: TextStyle(fontSize: 22,color: MyColors.myGrey),),
          Image.asset('assets/images/no_internet.png'),
        ],
      ),
    );
  }
}
