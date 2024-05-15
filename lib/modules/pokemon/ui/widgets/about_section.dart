import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/modules/common/widgets/type_icon.dart';

import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: figure out how to get pokemon species text without getting all the other versions
    return Center(child: Consumer(
      builder: (context, ref, child) {
        final String type =
            ref.watch(currentPokemonProvider).types.first.type.name;

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TypeIcon(type: type, iconOnly: false),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in elit ipsum. Nulla facilisi. Nullam vel iaculis lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam a auctor nulla. Nullam porta libero lectus, eu porta dui auctor non. In mi libero, porttitor ut luctus.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16)),
            ),
          ],
        );
      },
    ));
  }
}
