import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/pokemon_list_item.dart';

class PokemonListScreen extends ConsumerStatefulWidget {
  const PokemonListScreen({super.key});

  @override
  ConsumerState<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends ConsumerState<PokemonListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pokemonListAsync = ref.watch(pokemonListProvider);
    return pokemonListAsync.when(
        data: (pokemons) => ListView.separated(
              itemCount: pokemons.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                return PokemonListItem(pokemon: pokemons[index]);
              },
            ),
        error: (error, stack) => Center(child: Text('error: $error')),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
