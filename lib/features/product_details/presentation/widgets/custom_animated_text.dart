import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:first/core/utils/colors.dart';
import 'package:first/features/home_character/business_logic/character_cubit.dart';
import 'package:first/features/home_character/data_layer/model/character_model.dart';
import 'package:first/features/product_details/business_logic/quote_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAnimatedText extends StatelessWidget {
  const CustomAnimatedText({Key? key, required this.characterModel})
      : super(key: key);
  final CharacterModel characterModel;



  @override
  Widget build(BuildContext context) {
    BlocProvider.of<QuoteCubit>(context).showQuote(
        name: characterModel.name.toString());
    return BlocBuilder<QuoteCubit,QuoteState>(
        builder: (context, state) {
          if (state is QuoteLoaded)
           {
             var  quotes = state.quote;
             if (quotes.isNotEmpty) {
               int random = Random().nextInt(quotes.length - 1);
               return  SizedBox(
                 width: 250.0,
                 child: DefaultTextStyle(
                   style: const TextStyle(
                     fontSize: 30.0,
                     fontFamily: 'Bobbers',
                   ),
                   child: AnimatedTextKit(
                     animatedTexts: [
                       TyperAnimatedText('${quotes[random].quote}'),

                     ],
                     onTap: () {
                       print("Tap Event");
                     },
                   ),
                 ),
               );
             }
             else {
               return Container();
             }
           }
          else{
            return const Center(child: CircularProgressIndicator(
              color: MyColors.myYellow,
            ));
          }
        }


    );
  }
}
