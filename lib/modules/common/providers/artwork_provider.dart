import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'artwork_provider.g.dart';

@riverpod
String artWorkUrl(ArtWorkUrlRef ref, int id) {
  return "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png";
}
