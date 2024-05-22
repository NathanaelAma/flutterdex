import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yapdex/modules/common/config/colors.dart';

class TypeIcon extends StatelessWidget {
  final String type;
  final bool iconOnly;

  const TypeIcon({super.key, required this.type, required this.iconOnly});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: PokemonTypeColors.typeColors[type]!.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, 1),
          ),
        ],
        color: PokemonTypeColors.typeColors[type],
      ),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: iconOnly
              ? SvgPicture.asset(
                  'assets/svg/$type.svg',
                  width: 20,
                  height: 20,
                )
              : Container(
                  constraints: const BoxConstraints(maxWidth: 150),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/$type.svg',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        type.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )),
    );
  }
}
