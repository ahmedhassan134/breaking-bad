import 'package:first/features/home_character/business_logic/character_cubit.dart';
import 'package:first/features/home_character/data_layer/web_service/character_service.dart';
import 'package:first/features/home_character/presentation/views/character_view.dart';
import 'package:first/features/product_details/business_logic/quote_cubit.dart';
import 'package:first/features/product_details/data_layer/repositry/quote_repositry.dart';
import 'package:first/features/product_details/data_layer/service/quote_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:get/get.dart';

import 'features/home_character/data_layer/repositry/character_repositry.dart';
import 'features/home_character/presentation/widgets/check_internet_or_not.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(

      providers: [
        BlocProvider(create:  (_)=>CharacterCubit(CharacterRepo(CharacterService())),),
        BlocProvider(create:  (_)=>QuoteCubit(QuoteRepositry(QuoteService())),),


      ],
      child:GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:CharacterView()






        // CharacterView(),
      ),
    );
  }
}


