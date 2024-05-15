import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/modules/common/config/colors.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class AbilitiesSection extends ConsumerWidget {
  const AbilitiesSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pokemon pokemon = ref.watch(currentPokemonProvider);
    final String type = pokemon.types.first.type.name;

    // return Text(pokemon.abilities.toString());
    return Column(
      children: [
        Center(
          child: Text('Abilities',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: PokemonTypeColors.typeColors[type],
                  )),
        ),
        const SizedBox(height: 10),
        ...pokemon.abilities.map((ability) {
          return Text(ability.ability.name,
              style: Theme.of(context).textTheme.bodySmall);
        }),
      ],
    );
  }
}
