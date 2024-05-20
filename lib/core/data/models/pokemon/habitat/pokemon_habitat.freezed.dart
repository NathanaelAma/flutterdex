// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_habitat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonHabitat _$PokemonHabitatFromJson(Map<String, dynamic> json) {
  return _PokemonHabitat.fromJson(json);
}

/// @nodoc
mixin _$PokemonHabitat {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Name> get names => throw _privateConstructorUsedError;
  List<NamedAPIResource> get pokemonSpecies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonHabitatCopyWith<PokemonHabitat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonHabitatCopyWith<$Res> {
  factory $PokemonHabitatCopyWith(
          PokemonHabitat value, $Res Function(PokemonHabitat) then) =
      _$PokemonHabitatCopyWithImpl<$Res, PokemonHabitat>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<Name> names,
      List<NamedAPIResource> pokemonSpecies});
}

/// @nodoc
class _$PokemonHabitatCopyWithImpl<$Res, $Val extends PokemonHabitat>
    implements $PokemonHabitatCopyWith<$Res> {
  _$PokemonHabitatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? names = null,
    Object? pokemonSpecies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
      pokemonSpecies: null == pokemonSpecies
          ? _value.pokemonSpecies
          : pokemonSpecies // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonHabitatImplCopyWith<$Res>
    implements $PokemonHabitatCopyWith<$Res> {
  factory _$$PokemonHabitatImplCopyWith(_$PokemonHabitatImpl value,
          $Res Function(_$PokemonHabitatImpl) then) =
      __$$PokemonHabitatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<Name> names,
      List<NamedAPIResource> pokemonSpecies});
}

/// @nodoc
class __$$PokemonHabitatImplCopyWithImpl<$Res>
    extends _$PokemonHabitatCopyWithImpl<$Res, _$PokemonHabitatImpl>
    implements _$$PokemonHabitatImplCopyWith<$Res> {
  __$$PokemonHabitatImplCopyWithImpl(
      _$PokemonHabitatImpl _value, $Res Function(_$PokemonHabitatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? names = null,
    Object? pokemonSpecies = null,
  }) {
    return _then(_$PokemonHabitatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
      pokemonSpecies: null == pokemonSpecies
          ? _value._pokemonSpecies
          : pokemonSpecies // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonHabitatImpl implements _PokemonHabitat {
  const _$PokemonHabitatImpl(
      {required this.id,
      required this.name,
      required final List<Name> names,
      required final List<NamedAPIResource> pokemonSpecies})
      : _names = names,
        _pokemonSpecies = pokemonSpecies;

  factory _$PokemonHabitatImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonHabitatImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<Name> _names;
  @override
  List<Name> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  final List<NamedAPIResource> _pokemonSpecies;
  @override
  List<NamedAPIResource> get pokemonSpecies {
    if (_pokemonSpecies is EqualUnmodifiableListView) return _pokemonSpecies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonSpecies);
  }

  @override
  String toString() {
    return 'PokemonHabitat(id: $id, name: $name, names: $names, pokemonSpecies: $pokemonSpecies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonHabitatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._names, _names) &&
            const DeepCollectionEquality()
                .equals(other._pokemonSpecies, _pokemonSpecies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_names),
      const DeepCollectionEquality().hash(_pokemonSpecies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonHabitatImplCopyWith<_$PokemonHabitatImpl> get copyWith =>
      __$$PokemonHabitatImplCopyWithImpl<_$PokemonHabitatImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonHabitatImplToJson(
      this,
    );
  }
}

abstract class _PokemonHabitat implements PokemonHabitat {
  const factory _PokemonHabitat(
          {required final int id,
          required final String name,
          required final List<Name> names,
          required final List<NamedAPIResource> pokemonSpecies}) =
      _$PokemonHabitatImpl;

  factory _PokemonHabitat.fromJson(Map<String, dynamic> json) =
      _$PokemonHabitatImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<Name> get names;
  @override
  List<NamedAPIResource> get pokemonSpecies;
  @override
  @JsonKey(ignore: true)
  _$$PokemonHabitatImplCopyWith<_$PokemonHabitatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
