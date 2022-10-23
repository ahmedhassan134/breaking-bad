import 'dart:convert';

import 'package:first/features/home_character/data_layer/model/character_model.dart';
import 'package:first/features/product_details/presentation/views/product_datails_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/colors.dart';
import '../../business_logic/character_cubit.dart';

class ListBodyView extends StatelessWidget {
  const ListBodyView({Key? key, required this.characterModel})
      : super(key: key);
  final CharacterModel characterModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=>ProductDetailsView(characterModel:characterModel ));


      },
      child: Container
        (
        width: double.infinity,
        margin: EdgeInsets.all(5),
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: characterModel.img.isNotEmpty? FadeInImage(placeholder: , image: image):AssetImage('');
          // )
        ),
        child:Hero(
          tag:'${ characterModel.charId}',
          child: GridTile(
           child: ClipRRect(
              borderRadius: BorderRadius.circular(16),


              child:  characterModel.img!.isNotEmpty ?FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: '${characterModel.img}',
                fit: BoxFit.cover,
              ):Image.asset('assets/images/no_internet.png'),
            ),
            footer: Container(
              padding: EdgeInsets.all(6),
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: 40,
              color: Colors.black26,
              child: Text('${characterModel.name}',style: TextStyle(
                color: MyColors.myWhite,fontSize: 15,
                height: 1.2
              ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
        )
      ),
    );
  }
}
