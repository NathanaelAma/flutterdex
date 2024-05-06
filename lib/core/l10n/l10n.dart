// ignore_for_file: file_names
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  String getLocalizedType(String type, AppLocalizations localizations) {
    switch (type) {
      case 'bug':
        return localizations.pokemonTypesBug;
      case 'fire':
        return localizations.pokemonTypesFire;
      case 'electric':
        return localizations.pokemonTypesElectric;
      case 'water':
        return localizations.pokemonTypesWater;
      case 'grass':
        return localizations.pokemonTypesGrass;
      case 'ice':
        return localizations.pokemonTypesIce;
      case 'fighting':
        return localizations.pokemonTypesFighting;
      case 'poison':
        return localizations.pokemonTypesPoison;
      case 'ground':
        return localizations.pokemonTypesGround;
      case 'flying':
        return localizations.pokemonTypesFlying;
      case 'psychic':
        return localizations.pokemonTypesPsychic;
      case 'rock':
        return localizations.pokemonTypesRock;
      case 'ghost':
        return localizations.pokemonTypesGhost;
      case 'dark':
        return localizations.pokemonTypesDark;
      case 'dragon':
        return localizations.pokemonTypesDragon;
      case 'steel':
        return localizations.pokemonTypesSteel;
      case 'fairy':
        return localizations.pokemonTypesFairy;
      default:
        return "default";
    }
  }
}
