import 'package:first/core/utils/colors.dart';
import 'package:first/features/home_character/data_layer/model/character_model.dart';
import 'package:flutter/material.dart';

import '../widgets/product_details_view_body.dart';
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({Key? key,required this.characterModel}) : super(key: key);
final CharacterModel characterModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myGrey,


      body: ProductDetailsViewBody(
        characterModel: characterModel,
      ),
    );
  }
}
