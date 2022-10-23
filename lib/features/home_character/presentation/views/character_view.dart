import 'package:first/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

import '../widgets/character_view_body.dart';
import '../widgets/check_internet_or_not.dart';
class CharacterView extends StatelessWidget {
  const CharacterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myGrey,
      appBar: AppBar(
        backgroundColor: MyColors.myYellow,
        title: Text("Character",style: TextStyle(color: MyColors.myGrey,fontSize: 22),),
        centerTitle: true,

      ),
          body: OfflineBuilder(
            connectivityBuilder: (
                BuildContext context,
                ConnectivityResult connectivity,
                Widget child,
                ) {
              final bool connected = connectivity != ConnectivityResult.none;
              if(connected){ return CharacterViewBody();}
              else{
                return CheckInternetOrNot();
              }

            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  'There are no bottons to push :)',style: TextStyle(color: Colors.black),
                ),
                new Text(
                  'Just turn off your internet.',
                ),
              ],
            ),
          ),
    );
  }
}
