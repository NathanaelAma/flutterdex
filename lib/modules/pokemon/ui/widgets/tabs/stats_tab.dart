import 'package:flutter/material.dart';
import 'package:yapdex/modules/common/widgets/weaknesses.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/stats_components/abilities.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/stats_components/breeding.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/stats_components/capture.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/stats_components/sprites.dart';
import 'package:yapdex/modules/pokemon/ui/widgets/tabs/stats_components/stat_bars.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key});

  static const sections = [
    StatbarsSection(),
    WeaknessesSection(
      popup: false,
    ),
    AbilitiesSection(),
    BreedingSection(),
    CaptureSection(),
    SpritesSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: sections.length,
      itemBuilder: (context, index) {
        return sections[index];
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20);
      },
    );
  }
}
