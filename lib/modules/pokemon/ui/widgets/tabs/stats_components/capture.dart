import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/data/models/pokemon/species/pokemon_species.dart';
import 'package:yapdex/core/l10n/l10n.dart';
import 'package:yapdex/modules/common/config/colors.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class CaptureSection extends ConsumerWidget {
  const CaptureSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pokemon pokemon = ref.watch(currentPokemonProvider);
    final PokemonSpecies pokemonSpecies =
        ref.read(currentPokemonSpeciesProvider);
    final String type = pokemon.types.first.type.name;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              AppLocalizations.of(context)!.detailCaptureLabel,
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
                title: 'Habitat',
                value: pokemonSpecies.habitat.name,
                type: type,
              ),
              _buildGenerationInfo(
                context,
                title: 'Generation',
                value: pokemonSpecies.generation.name,
                type: type,
              ),
              _buildCaptureRateInfo(
                context,
                title: 'Capture Rate',
                captureRate: pokemonSpecies.capture_rate,
                type: type,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(BuildContext context,
      {required String title, required String value, required String type}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: PokemonTypeColors
                    .typeColors[type], // Adjust based on the Pokémon's type
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Text(value, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }

  Widget _buildGenerationInfo(BuildContext context,
      {required String title, required String value, required String type}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: PokemonTypeColors
                      .typeColors[type], // Adjust based on the Pokémon's type
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Text(value, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }

  Widget _buildCaptureRateInfo(BuildContext context,
      {required String title, required int captureRate, required String type}) {
    final double captureRatePercentage = captureRate / 255;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: PokemonTypeColors
                    .typeColors[type], // Adjust based on the Pokémon's type
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              '${(captureRatePercentage * 100).toStringAsFixed(1)}%',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: PokemonTypeColors.typeColors[type],
                  ),
            ),
            const SizedBox(width: 4),
            CircularPercentIndicator(
              radius: 25.0,
              percent: captureRatePercentage,
              center: Icon(Icons.catching_pokemon,
                  color: PokemonTypeColors.typeColors[type]),
              progressColor: PokemonTypeColors.typeColors[type],
            ),
          ],
        ),
      ],
    );
  }
}
