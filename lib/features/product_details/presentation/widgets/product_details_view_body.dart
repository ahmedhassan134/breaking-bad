import 'package:first/features/home_character/data_layer/model/character_model.dart';
import 'package:flutter/material.dart';

import 'custom_divider.dart';
import 'custom_sliver_appbar.dart';
import 'custom_sliver_list.dart';
class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({Key? key,required this.characterModel}) : super(key: key);
final CharacterModel characterModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppbar(characterModel: characterModel,),
        CustomSliverList(
          characterModel: characterModel,
        ),
        // CustomDivider(
        //   value: 130,
        // )
      ],

    );
  }
}
