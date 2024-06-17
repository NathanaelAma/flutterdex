import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/utils/utils.dart';
import 'package:yapdex/modules/common/widgets/type_icon.dart';

import 'package:yapdex/modules/pokemon/providers/pokemon_provider.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    //TODO: figure out how to get pokemon species text without getting all the other versions
    return Consumer(
      builder: (context, ref, child) {
        final String type =
            ref.watch(currentPokemonProvider).types.first.type.name;

        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(48),
              topRight: Radius.circular(48),
            ),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TypeIcon(type: type, iconOnly: false),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                          formatDescription(description),
                          textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
