import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/data/models/pokemon/species/pokemon_species.dart';
import 'package:yapdex/core/l10n/l10n.dart';
import 'package:yapdex/modules/common/config/colors.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class BreedingSection extends ConsumerWidget {
  const BreedingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pokemon pokemon = ref.watch(currentPokemonProvider);
    final PokemonSpecies currentPokemonSpecies =
        ref.watch(currentPokemonSpeciesProvider);
    final String type = pokemon.types.first.type.name;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              AppLocalizations.of(context)!.detailBreedingLabel,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: PokemonTypeColors.typeColors[type],
                  ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildInfoColumn(
                context,
                title: 'Egg Group',
                values: currentPokemonSpecies.egg_groups
                    .map((e) => e.name)
                    .toList(),
                type: type,
              ),
              _buildInfoColumn(
                context,
                title: 'Hatch Time',
                values: [
                  '${currentPokemonSpecies.hatch_counter * 257} Steps',
                  '${currentPokemonSpecies.hatch_counter} Cycles',
                ],
                type: type,
              ),
              _buildGenderInfo(
                context,
                malePercent: currentPokemonSpecies.gender_rate == -1
                    ? 0
                    : 100 - (currentPokemonSpecies.gender_rate / 8 * 100),
                femalePercent: currentPokemonSpecies.gender_rate == -1
                    ? 0
                    : currentPokemonSpecies.gender_rate / 8 * 100,
                type: type,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(BuildContext context,
      {required String title,
      required List<String> values,
      required String type}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: PokemonTypeColors
                    .typeColors[type], // Adjust based on the Pokemon's type
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        ...values.map((value) =>
            Text(value, style: Theme.of(context).textTheme.bodyMedium)),
      ],
    );
  }

  Widget _buildGenderInfo(BuildContext context,
      {required double malePercent,
      required double femalePercent,
      required String type}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: PokemonTypeColors
                    .typeColors[type], // Adjust based on the Pokemon's type
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              '${femalePercent.toStringAsFixed(1)}%',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.purple),
            ),
            const SizedBox(width: 4),
            const Icon(Icons.female, color: Colors.purple, size: 18),
            const SizedBox(width: 8),
            Text(
              '${malePercent.toStringAsFixed(1)}%',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.blue),
            ),
            const SizedBox(width: 4),
            const Icon(Icons.male, color: Colors.blue, size: 18),
          ],
        ),
      ],
    );
  }
}
