import 'dart:math';

import 'package:first/core/utils/colors.dart';
import 'package:first/features/home_character/business_logic/character_cubit.dart';
import 'package:first/features/home_character/data_layer/model/character_model.dart';
import 'package:first/features/product_details/presentation/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'character_info.dart';
import 'custom_animated_text.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({Key? key,required this.characterModel}) : super(key: key);
  final CharacterModel characterModel;

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<CharacterCubit>(context).showQuote(
    //     name: characterModel.name.toString());
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CharacterInfo(
                  title: 'job : ',
                  subTitle: '${characterModel.occupation?.join('/')}',


                ),
                CustomDivider(value: 340),
                CharacterInfo(
                  title: 'Appeared in : ',
                  subTitle: '${characterModel.appearance?.join('/')}',


                ),
                CustomDivider(value: 280),
                CharacterInfo(
                  title: 'season: ',
                  subTitle: '${characterModel.category}',


                ),
                CustomDivider(value: 310),
                CharacterInfo(
                  title: 'statues : ',
                  subTitle: '${characterModel.status}',


                ),
                CustomDivider(value:310),

                CustomAnimatedText(characterModel: characterModel),
               // BlocBuilder<CharacterCubit,CharacterState>(builder: (context,state){
               //
               //   return checkIfQuoteLoadedOrNot(state);
               // }),


                SizedBox(height: 1000,),




              ],
            ),
          )
        ],
      ),
    );
  }

  // Widget checkIfQuoteLoadedOrNot(state){
  //   if(state is QuoteLoaded){
  //
  //     return SuccessLoaded(state);
  //   }
  //   else{
  //     return Center(
  //       child: CircularProgressIndicator(
  //         color: MyColors.myYellow,
  //       ),
  //     );
  //   }
  //
  //
  //
  //
  // }
  // Widget SuccessLoaded(state){
  //   var quotes=state.quote;
  //   if(quotes.length !=0){
  //
  //     int randomValue=Random().nextInt(quotes.length-1);
  //     return Center(child: Text('${quotes[randomValue].quote}'));
  //   }
  //
  //   else{
  //
  //     return Container();
  //   }
  //
  //
  //
  //
  // }
}
