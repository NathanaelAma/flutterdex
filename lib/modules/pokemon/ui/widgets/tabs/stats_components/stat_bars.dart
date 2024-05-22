import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/modules/common/config/colors.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class StatbarsSection extends ConsumerWidget {
  const StatbarsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pokemon pokemon = ref.watch(currentPokemonProvider);
    final String type = pokemon.types.first.type.name;
    final PokemonStatList stats = pokemon.stats;
    final Map<String, int> statMap = {};

    final Map<String, String> nameMappings = {
      'hp': 'HP',
      'attack': 'Atk',
      'defense': 'Def',
      'special-attack': 'Sp. Atk',
      'special-defense': 'Sp. Def',
      'speed': 'Spd',
    };

    for (int i = 0; i < stats.length; i++) {
      final stat = stats[i];
      statMap[stat.stat.name] = stat.base_stat;
    }

    log(statMap.toString());

    final List<Widget> statBars = statMap.entries.map((stat) {
      final percentValue = stat.value / 255;
      final shortenedName = nameMappings[stat.key] ?? stat.key;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              child: Text(
                shortenedName.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: PokemonTypeColors.typeColors[type],
                ),
              ),
            ),
            SizedBox(
              width: 40,
              child: Text(
                stat.value.toString().padLeft(3, '0'),
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ),
            Expanded(
              child: LinearPercentIndicator(
                lineHeight: 10.0,
                percent: percentValue,
                backgroundColor: Colors.grey[300],
                progressColor: PokemonTypeColors.typeColors[type],
                barRadius: const Radius.circular(5),
              ),
            ),
          ],
        ),
      );
    }).toList();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: statBars,
      ),
    );
  }
}
