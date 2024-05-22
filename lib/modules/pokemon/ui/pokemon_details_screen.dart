import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/modules/common/config/colors.dart';
import 'package:yapdex/modules/common/providers/artwork_provider.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/about_section.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/more_info_tabs.dart';

class PokemonDetailScreen extends ConsumerWidget {
  const PokemonDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pokemon? pokemon = ref.watch(currentPokemonProvider);
    final String type = pokemon!.types.first.type.name;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: PokemonTypeColors.typeColors[type],
          title: Text(
            pokemon.name.characters.first.toUpperCase() +
                pokemon.name.substring(1),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: PokemonTypeColors.typeColors[type],
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: PokemonTypeColors.typeColors[type]),
          child: Container(
            padding: const EdgeInsets.all(20),
            // margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                Center(
                  child: Hero(
                    tag: pokemon.id,
                    child: CachedNetworkImage(
                      imageUrl: ref.read(artWorkUrlProvider(pokemon.id)),
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                Text(
                  '#${pokemon.id.toString().padLeft(3, '0')}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const AboutSection(),
                const SizedBox(height: 20),
                const MoreInfoTabs(),
              ],
            ),
          ),
        ));
  }
}
