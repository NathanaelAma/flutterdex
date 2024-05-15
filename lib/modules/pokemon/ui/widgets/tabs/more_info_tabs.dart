import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/data/models/pokemon/pokemon.dart';
import 'package:yapdex/core/l10n/l10n.dart';
import 'package:yapdex/modules/common/config/colors.dart';
import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/evolutions_tab.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/moves_tab.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/stats_tab.dart';

class MoreInfoTabs extends StatelessWidget {
  const MoreInfoTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      Tab(text: AppLocalizations.of(context)!.detailStatsLabel),
      Tab(text: AppLocalizations.of(context)!.detailEvolutionsLabel),
      Tab(text: AppLocalizations.of(context)!.detailMovesLabel),
    ];

    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 300,
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: Consumer(
                  builder: (context, ref, child) {
                    final Pokemon? pokemon = ref.watch(currentPokemonProvider);
                    final String type = pokemon!.types.first.type.name;

                    return TabBar(
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
                    );
                  },
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: StatsTab(),
                    )),
                    Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: EvolutionsTab(),
                    )),
                    Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MovesTab(),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
