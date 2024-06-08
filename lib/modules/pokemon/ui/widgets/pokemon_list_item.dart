import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/router/router.dart';
import 'package:yapdex/modules/common/providers/artwork_provider.dart';
import 'package:yapdex/modules/common/widgets/type_icon.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class PokemonListItem extends ConsumerWidget {
  final Pokemon pokemon;
  const PokemonListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: Hero(
        tag: pokemon.id,
        child: CachedNetworkImage(
          imageUrl: ref.read(artWorkUrlProvider(pokemon.id)),
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
      title: Text(
        pokemon.name.characters.first.toUpperCase() + pokemon.name.substring(1),
      ),
      subtitle: Text(
        '#${pokemon.id.toString().padLeft(3, '0')}',
      ),
      onTap: () => {
        ref.read(currentPokemonProvider.notifier).setCurrentPokemon(pokemon),
        ref
            .read(currentPokemonSpeciesProvider.notifier)
            .setCurrentPokemonSpeciesById(pokemon.id),
        ref.read(goRouterProvider).push(
              Uri(
                path: '/pokemon/${pokemon.id}',
              ).toString(),
            ),
      },
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: pokemon.types
            .map(
              (type) => Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TypeIcon(
                  type: type.type.name,
                  iconOnly: true,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
