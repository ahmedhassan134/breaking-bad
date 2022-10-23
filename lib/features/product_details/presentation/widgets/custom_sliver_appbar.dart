import 'package:first/core/utils/colors.dart';
import 'package:first/features/home_character/data_layer/model/character_model.dart';
import 'package:flutter/material.dart';
class CustomSliverAppbar extends StatelessWidget {
  const CustomSliverAppbar({Key? key,required this.characterModel}) : super(key: key);
final CharacterModel characterModel;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: MyColors.myGrey,
      expandedHeight: 600,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text('${characterModel.name}'),
        background: Hero(
          tag: '${characterModel.charId}',
          child: Image.network('${characterModel.img}',fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
