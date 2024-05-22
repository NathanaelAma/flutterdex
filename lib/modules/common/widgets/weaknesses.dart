import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/l10n/l10n.dart';
import 'package:yapdex/modules/common/config/colors.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class WeaknessesSection extends ConsumerWidget {
  const WeaknessesSection({super.key, required this.popup});

  final bool popup;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pokemon pokemon = ref.watch(currentPokemonProvider);
    final String type = pokemon.types.first.type.name;

    return Center(
      child: popup
          ? const Text("popup")
          : Text(
              AppLocalizations.of(context)!.detailWeaknessesLabel,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: PokemonTypeColors.typeColors[type],
                  ),
            ),
    );
  }
}
