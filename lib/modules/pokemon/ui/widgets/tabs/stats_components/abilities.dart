import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/l10n/l10n.dart';
import 'package:yapdex/modules/common/config/colors.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class AbilitiesSection extends ConsumerWidget {
  const AbilitiesSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pokemon pokemon = ref.watch(currentPokemonProvider);
    final String type = pokemon.types.first.type.name;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            AppLocalizations.of(context)!.detailAbilitiesLabel,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: PokemonTypeColors.typeColors[type],
                ),
          ),
        ),
        const SizedBox(height: 10),
        ...pokemon.abilities.map((ability) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ability.ability.name,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: PokemonTypeColors.typeColors[type],
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nunc nec ultricies. ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 10),
              Divider(color: Colors.grey[300]),
            ],
          );
        }),
      ],
    );
  }
}
