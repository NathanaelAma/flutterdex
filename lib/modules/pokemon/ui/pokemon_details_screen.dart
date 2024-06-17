import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/data/models/pokemon/species/pokemon_species.dart';
import 'package:yapdex/core/l10n/l10n.dart';
import 'package:yapdex/core/utils/utils.dart';
import 'package:yapdex/modules/common/config/colors.dart';
import 'package:yapdex/modules/common/providers/artwork_provider.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/about_section.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/evolutions_tab.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/moves_tab.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/stats_tab.dart';

class PokemonDetailScreen extends ConsumerWidget {
  const PokemonDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Pokemon? pokemon = ref.watch(currentPokemonProvider);
    final String type = pokemon!.types.first.type.name;
    final PokemonSpecies species = ref.watch(currentPokemonSpeciesProvider);
    final String description = species.flavor_text_entries
        .firstWhere((element) => element.language.name == 'en')
        .flavor_text;

    final List<Tab> tabs = <Tab>[
      Tab(text: AppLocalizations.of(context)!.detailStatsLabel),
      Tab(text: AppLocalizations.of(context)!.detailEvolutionsLabel),
      Tab(text: AppLocalizations.of(context)!.detailMovesLabel),
    ];

    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                backgroundColor: PokemonTypeColors.typeColors[type],
                pinned: true,
                title: Text(
                upperCasePokemonName(pokemon.name),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                        flex: 1,
                          child: CachedNetworkImage(
                            width: 100,
                            height: 100,
                            imageUrl: ref.read(artWorkUrlProvider(pokemon.id)),
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: AboutSection(description: description),
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(AppBar().preferredSize.height),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48),
                        topRight: Radius.circular(48),
                      ),
                      color: Colors.white,
                    ),
                    child: TabBar(
                      unselectedLabelColor: PokemonTypeColors.typeColors[type],
                      labelColor: Colors.white,
                      labelPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0),
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: PokemonTypeColors.typeColors[type],
                        border: Border.all(
                          color: PokemonTypeColors.typeColors[type]!,
                          width: 5,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: PokemonTypeColors.typeColors[type]!
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      tabs: tabs,
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Container(
            decoration: const 
            BoxDecoration(
              color: Colors.white,
            ),
            child: const TabBarView(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: StatsTab(),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: EvolutionsTab(),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: MovesTab(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
