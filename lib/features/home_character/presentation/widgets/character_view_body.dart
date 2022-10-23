import 'package:first/core/utils/colors.dart';
import 'package:first/features/home_character/business_logic/character_cubit.dart';
import 'package:first/features/home_character/data_layer/model/character_model.dart';
import 'package:first/features/home_character/presentation/widgets/grid_delegate_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterViewBody extends StatefulWidget {
  const CharacterViewBody({Key? key}) : super(key: key);

  @override
  State<CharacterViewBody> createState() => _CharacterViewBodyState();
}

class _CharacterViewBodyState extends State<CharacterViewBody> {
  void initState() {
    BlocProvider.of<CharacterCubit>(context).getCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
      if (state is SucessfulState) {
        state.character;
     return   GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            childAspectRatio: 2 / 3,
          ),
          itemBuilder: (context, index) {
            return ListBodyView(
                characterModel: BlocProvider.of<CharacterCubit>(context)
                    .characterList[index]);
          },
          itemCount:
              BlocProvider.of<CharacterCubit>(context).characterList.length,
        );
      } else {
        return Text('null');
      }
    });
  }
}
