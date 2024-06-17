import 'package:flutter/material.dart';

/// Converts the given [text] to uppercase and returns the modified string.
String upperCase(String text) {
  return text.toUpperCase();
}

/// Converts the first character of the given [pokemonName] to uppercase and returns the modified string.
String upperCasePokemonName(String pokemonName) {
  return pokemonName.characters.first.toUpperCase() + pokemonName.substring(1);
}

String generatePokemonNumber(int pokemonId) {
  return '#${pokemonId.toString().padLeft(3, '0')}';
}

/// Formats the given [description] by replacing certain characters and returns the modified string.
String formatDescription(String description) {
  return description
      .replaceAll('\f', '\n')
      .replaceAll('\u00ad\n', '')
      .replaceAll('\u00ad', '')
      .replaceAll(' -\n', ' - ')
      .replaceAll('-\n', '-')
      .replaceAll('\n', ' ');
}
