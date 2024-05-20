import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/l10n/l10n.dart';
import 'package:yapdex/modules/common/config/colors.dart';
import 'package:yapdex/modules/common/providers/artwork_provider.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class SpritesSection extends ConsumerWidget {
  const SpritesSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pokemon pokemon = ref.watch(currentPokemonProvider);
    final String type = pokemon.types.first.type.name;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.detailSpritesLabel,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: PokemonTypeColors.typeColors[type],
                ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSpriteColumn(
                context,
                label: 'Normal',
                pokemon: pokemon,
                shiny: false,
                type: type,
                ref: ref,
              ),
              _buildSpriteColumn(
                context,
                label: 'Shiny',
                pokemon: pokemon,
                shiny: true,
                type: type,
                ref: ref,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSpriteColumn(BuildContext context,
      {required String label,
      required Pokemon pokemon,
      required bool shiny,
      required String type,
      required WidgetRef ref}) {
    return Column(
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: PokemonTypeColors.typeColors[type],
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 10),
        CachedNetworkImage(
          imageUrl: shiny
              ? ref.read(shinyArtworkUrlProvider(
                  pokemon.id)) //TODO: create reusable pokemon sprite widget
              : ref.read(artWorkUrlProvider(pokemon.id)),
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          height: 100,
          width: 100,
          fit: BoxFit.contain,
        )
      ],
    );
  }
}
