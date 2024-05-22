// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) {
  return _PokemonType.fromJson(json);
}

/// @nodoc
mixin _$PokemonType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DamageRelations get damage_relations => throw _privateConstructorUsedError;
  NamedAPIResource get generation => throw _privateConstructorUsedError;
  NamedAPIResource get move_damage_class => throw _privateConstructorUsedError;
  List<Name> get names => throw _privateConstructorUsedError;
  List<TypePokemon> get pokemon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeCopyWith<PokemonType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeCopyWith<$Res> {
  factory $PokemonTypeCopyWith(
          PokemonType value, $Res Function(PokemonType) then) =
      _$PokemonTypeCopyWithImpl<$Res, PokemonType>;
  @useResult
  $Res call(
      {int id,
      String name,
      DamageRelations damage_relations,
      NamedAPIResource generation,
      NamedAPIResource move_damage_class,
      List<Name> names,
      List<TypePokemon> pokemon});

  $DamageRelationsCopyWith<$Res> get damage_relations;
  $NamedAPIResourceCopyWith<$Res> get generation;
  $NamedAPIResourceCopyWith<$Res> get move_damage_class;
}

/// @nodoc
class _$PokemonTypeCopyWithImpl<$Res, $Val extends PokemonType>
    implements $PokemonTypeCopyWith<$Res> {
  _$PokemonTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? damage_relations = null,
    Object? generation = null,
    Object? move_damage_class = null,
    Object? names = null,
    Object? pokemon = null,
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
      damage_relations: null == damage_relations
          ? _value.damage_relations
          : damage_relations // ignore: cast_nullable_to_non_nullable
              as DamageRelations,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      move_damage_class: null == move_damage_class
          ? _value.move_damage_class
          : move_damage_class // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<TypePokemon>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DamageRelationsCopyWith<$Res> get damage_relations {
    return $DamageRelationsCopyWith<$Res>(_value.damage_relations, (value) {
      return _then(_value.copyWith(damage_relations: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get generation {
    return $NamedAPIResourceCopyWith<$Res>(_value.generation, (value) {
      return _then(_value.copyWith(generation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get move_damage_class {
    return $NamedAPIResourceCopyWith<$Res>(_value.move_damage_class, (value) {
      return _then(_value.copyWith(move_damage_class: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeImplCopyWith<$Res>
    implements $PokemonTypeCopyWith<$Res> {
  factory _$$PokemonTypeImplCopyWith(
          _$PokemonTypeImpl value, $Res Function(_$PokemonTypeImpl) then) =
      __$$PokemonTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      DamageRelations damage_relations,
      NamedAPIResource generation,
      NamedAPIResource move_damage_class,
      List<Name> names,
      List<TypePokemon> pokemon});

  @override
  $DamageRelationsCopyWith<$Res> get damage_relations;
  @override
  $NamedAPIResourceCopyWith<$Res> get generation;
  @override
  $NamedAPIResourceCopyWith<$Res> get move_damage_class;
}

/// @nodoc
class __$$PokemonTypeImplCopyWithImpl<$Res>
    extends _$PokemonTypeCopyWithImpl<$Res, _$PokemonTypeImpl>
    implements _$$PokemonTypeImplCopyWith<$Res> {
  __$$PokemonTypeImplCopyWithImpl(
      _$PokemonTypeImpl _value, $Res Function(_$PokemonTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? damage_relations = null,
    Object? generation = null,
    Object? move_damage_class = null,
    Object? names = null,
    Object? pokemon = null,
  }) {
    return _then(_$PokemonTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      damage_relations: null == damage_relations
          ? _value.damage_relations
          : damage_relations // ignore: cast_nullable_to_non_nullable
              as DamageRelations,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      move_damage_class: null == move_damage_class
          ? _value.move_damage_class
          : move_damage_class // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
      pokemon: null == pokemon
          ? _value._pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<TypePokemon>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeImpl implements _PokemonType {
  const _$PokemonTypeImpl(
      {required this.id,
      required this.name,
      required this.damage_relations,
      required this.generation,
      required this.move_damage_class,
      required final List<Name> names,
      required final List<TypePokemon> pokemon})
      : _names = names,
        _pokemon = pokemon;

  factory _$PokemonTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final DamageRelations damage_relations;
  @override
  final NamedAPIResource generation;
  @override
  final NamedAPIResource move_damage_class;
  final List<Name> _names;
  @override
  List<Name> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  final List<TypePokemon> _pokemon;
  @override
  List<TypePokemon> get pokemon {
    if (_pokemon is EqualUnmodifiableListView) return _pokemon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemon);
  }

  @override
  String toString() {
    return 'PokemonType(id: $id, name: $name, damage_relations: $damage_relations, generation: $generation, move_damage_class: $move_damage_class, names: $names, pokemon: $pokemon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.damage_relations, damage_relations) ||
                other.damage_relations == damage_relations) &&
            (identical(other.generation, generation) ||
                other.generation == generation) &&
            (identical(other.move_damage_class, move_damage_class) ||
                other.move_damage_class == move_damage_class) &&
            const DeepCollectionEquality().equals(other._names, _names) &&
            const DeepCollectionEquality().equals(other._pokemon, _pokemon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      damage_relations,
      generation,
      move_damage_class,
      const DeepCollectionEquality().hash(_names),
      const DeepCollectionEquality().hash(_pokemon));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeImplCopyWith<_$PokemonTypeImpl> get copyWith =>
      __$$PokemonTypeImplCopyWithImpl<_$PokemonTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeImplToJson(
      this,
    );
  }
}

abstract class _PokemonType implements PokemonType {
  const factory _PokemonType(
      {required final int id,
      required final String name,
      required final DamageRelations damage_relations,
      required final NamedAPIResource generation,
      required final NamedAPIResource move_damage_class,
      required final List<Name> names,
      required final List<TypePokemon> pokemon}) = _$PokemonTypeImpl;

  factory _PokemonType.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  DamageRelations get damage_relations;
  @override
  NamedAPIResource get generation;
  @override
  NamedAPIResource get move_damage_class;
  @override
  List<Name> get names;
  @override
  List<TypePokemon> get pokemon;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypeImplCopyWith<_$PokemonTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DamageRelations _$DamageRelationsFromJson(Map<String, dynamic> json) {
  return _DamageRelations.fromJson(json);
}

/// @nodoc
mixin _$DamageRelations {
  List<NamedAPIResource> get no_damage_to => throw _privateConstructorUsedError;
  List<NamedAPIResource> get half_damage_to =>
      throw _privateConstructorUsedError;
  List<NamedAPIResource> get double_damage_yto =>
      throw _privateConstructorUsedError;
  List<NamedAPIResource> get no_damage_from =>
      throw _privateConstructorUsedError;
  List<NamedAPIResource> get half_damage_from =>
      throw _privateConstructorUsedError;
  List<NamedAPIResource> get double_damage_from =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DamageRelationsCopyWith<DamageRelations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DamageRelationsCopyWith<$Res> {
  factory $DamageRelationsCopyWith(
          DamageRelations value, $Res Function(DamageRelations) then) =
      _$DamageRelationsCopyWithImpl<$Res, DamageRelations>;
  @useResult
  $Res call(
      {List<NamedAPIResource> no_damage_to,
      List<NamedAPIResource> half_damage_to,
      List<NamedAPIResource> double_damage_yto,
      List<NamedAPIResource> no_damage_from,
      List<NamedAPIResource> half_damage_from,
      List<NamedAPIResource> double_damage_from});
}

/// @nodoc
class _$DamageRelationsCopyWithImpl<$Res, $Val extends DamageRelations>
    implements $DamageRelationsCopyWith<$Res> {
  _$DamageRelationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no_damage_to = null,
    Object? half_damage_to = null,
    Object? double_damage_yto = null,
    Object? no_damage_from = null,
    Object? half_damage_from = null,
    Object? double_damage_from = null,
  }) {
    return _then(_value.copyWith(
      no_damage_to: null == no_damage_to
          ? _value.no_damage_to
          : no_damage_to // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      half_damage_to: null == half_damage_to
          ? _value.half_damage_to
          : half_damage_to // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      double_damage_yto: null == double_damage_yto
          ? _value.double_damage_yto
          : double_damage_yto // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      no_damage_from: null == no_damage_from
          ? _value.no_damage_from
          : no_damage_from // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      half_damage_from: null == half_damage_from
          ? _value.half_damage_from
          : half_damage_from // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      double_damage_from: null == double_damage_from
          ? _value.double_damage_from
          : double_damage_from // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DamageRelationsImplCopyWith<$Res>
    implements $DamageRelationsCopyWith<$Res> {
  factory _$$DamageRelationsImplCopyWith(_$DamageRelationsImpl value,
          $Res Function(_$DamageRelationsImpl) then) =
      __$$DamageRelationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NamedAPIResource> no_damage_to,
      List<NamedAPIResource> half_damage_to,
      List<NamedAPIResource> double_damage_yto,
      List<NamedAPIResource> no_damage_from,
      List<NamedAPIResource> half_damage_from,
      List<NamedAPIResource> double_damage_from});
}

/// @nodoc
class __$$DamageRelationsImplCopyWithImpl<$Res>
    extends _$DamageRelationsCopyWithImpl<$Res, _$DamageRelationsImpl>
    implements _$$DamageRelationsImplCopyWith<$Res> {
  __$$DamageRelationsImplCopyWithImpl(
      _$DamageRelationsImpl _value, $Res Function(_$DamageRelationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no_damage_to = null,
    Object? half_damage_to = null,
    Object? double_damage_yto = null,
    Object? no_damage_from = null,
    Object? half_damage_from = null,
    Object? double_damage_from = null,
  }) {
    return _then(_$DamageRelationsImpl(
      no_damage_to: null == no_damage_to
          ? _value._no_damage_to
          : no_damage_to // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      half_damage_to: null == half_damage_to
          ? _value._half_damage_to
          : half_damage_to // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      double_damage_yto: null == double_damage_yto
          ? _value._double_damage_yto
          : double_damage_yto // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      no_damage_from: null == no_damage_from
          ? _value._no_damage_from
          : no_damage_from // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      half_damage_from: null == half_damage_from
          ? _value._half_damage_from
          : half_damage_from // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      double_damage_from: null == double_damage_from
          ? _value._double_damage_from
          : double_damage_from // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DamageRelationsImpl implements _DamageRelations {
  const _$DamageRelationsImpl(
      {required final List<NamedAPIResource> no_damage_to,
      required final List<NamedAPIResource> half_damage_to,
      required final List<NamedAPIResource> double_damage_yto,
      required final List<NamedAPIResource> no_damage_from,
      required final List<NamedAPIResource> half_damage_from,
      required final List<NamedAPIResource> double_damage_from})
      : _no_damage_to = no_damage_to,
        _half_damage_to = half_damage_to,
        _double_damage_yto = double_damage_yto,
        _no_damage_from = no_damage_from,
        _half_damage_from = half_damage_from,
        _double_damage_from = double_damage_from;

  factory _$DamageRelationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DamageRelationsImplFromJson(json);

  final List<NamedAPIResource> _no_damage_to;
  @override
  List<NamedAPIResource> get no_damage_to {
    if (_no_damage_to is EqualUnmodifiableListView) return _no_damage_to;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_no_damage_to);
  }

  final List<NamedAPIResource> _half_damage_to;
  @override
  List<NamedAPIResource> get half_damage_to {
    if (_half_damage_to is EqualUnmodifiableListView) return _half_damage_to;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_half_damage_to);
  }

  final List<NamedAPIResource> _double_damage_yto;
  @override
  List<NamedAPIResource> get double_damage_yto {
    if (_double_damage_yto is EqualUnmodifiableListView)
      return _double_damage_yto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_double_damage_yto);
  }

  final List<NamedAPIResource> _no_damage_from;
  @override
  List<NamedAPIResource> get no_damage_from {
    if (_no_damage_from is EqualUnmodifiableListView) return _no_damage_from;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_no_damage_from);
  }

  final List<NamedAPIResource> _half_damage_from;
  @override
  List<NamedAPIResource> get half_damage_from {
    if (_half_damage_from is EqualUnmodifiableListView)
      return _half_damage_from;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_half_damage_from);
  }

  final List<NamedAPIResource> _double_damage_from;
  @override
  List<NamedAPIResource> get double_damage_from {
    if (_double_damage_from is EqualUnmodifiableListView)
      return _double_damage_from;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_double_damage_from);
  }

  @override
  String toString() {
    return 'DamageRelations(no_damage_to: $no_damage_to, half_damage_to: $half_damage_to, double_damage_yto: $double_damage_yto, no_damage_from: $no_damage_from, half_damage_from: $half_damage_from, double_damage_from: $double_damage_from)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DamageRelationsImpl &&
            const DeepCollectionEquality()
                .equals(other._no_damage_to, _no_damage_to) &&
            const DeepCollectionEquality()
                .equals(other._half_damage_to, _half_damage_to) &&
            const DeepCollectionEquality()
                .equals(other._double_damage_yto, _double_damage_yto) &&
            const DeepCollectionEquality()
                .equals(other._no_damage_from, _no_damage_from) &&
            const DeepCollectionEquality()
                .equals(other._half_damage_from, _half_damage_from) &&
            const DeepCollectionEquality()
                .equals(other._double_damage_from, _double_damage_from));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_no_damage_to),
      const DeepCollectionEquality().hash(_half_damage_to),
      const DeepCollectionEquality().hash(_double_damage_yto),
      const DeepCollectionEquality().hash(_no_damage_from),
      const DeepCollectionEquality().hash(_half_damage_from),
      const DeepCollectionEquality().hash(_double_damage_from));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DamageRelationsImplCopyWith<_$DamageRelationsImpl> get copyWith =>
      __$$DamageRelationsImplCopyWithImpl<_$DamageRelationsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DamageRelationsImplToJson(
      this,
    );
  }
}

abstract class _DamageRelations implements DamageRelations {
  const factory _DamageRelations(
          {required final List<NamedAPIResource> no_damage_to,
          required final List<NamedAPIResource> half_damage_to,
          required final List<NamedAPIResource> double_damage_yto,
          required final List<NamedAPIResource> no_damage_from,
          required final List<NamedAPIResource> half_damage_from,
          required final List<NamedAPIResource> double_damage_from}) =
      _$DamageRelationsImpl;

  factory _DamageRelations.fromJson(Map<String, dynamic> json) =
      _$DamageRelationsImpl.fromJson;

  @override
  List<NamedAPIResource> get no_damage_to;
  @override
  List<NamedAPIResource> get half_damage_to;
  @override
  List<NamedAPIResource> get double_damage_yto;
  @override
  List<NamedAPIResource> get no_damage_from;
  @override
  List<NamedAPIResource> get half_damage_from;
  @override
  List<NamedAPIResource> get double_damage_from;
  @override
  @JsonKey(ignore: true)
  _$$DamageRelationsImplCopyWith<_$DamageRelationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypePokemon _$TypePokemonFromJson(Map<String, dynamic> json) {
  return _TypePokemon.fromJson(json);
}

/// @nodoc
mixin _$TypePokemon {
  int get slot => throw _privateConstructorUsedError;
  NamedAPIResource get pokemon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypePokemonCopyWith<TypePokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypePokemonCopyWith<$Res> {
  factory $TypePokemonCopyWith(
          TypePokemon value, $Res Function(TypePokemon) then) =
      _$TypePokemonCopyWithImpl<$Res, TypePokemon>;
  @useResult
  $Res call({int slot, NamedAPIResource pokemon});

  $NamedAPIResourceCopyWith<$Res> get pokemon;
}

/// @nodoc
class _$TypePokemonCopyWithImpl<$Res, $Val extends TypePokemon>
    implements $TypePokemonCopyWith<$Res> {
  _$TypePokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? pokemon = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get pokemon {
    return $NamedAPIResourceCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypePokemonImplCopyWith<$Res>
    implements $TypePokemonCopyWith<$Res> {
  factory _$$TypePokemonImplCopyWith(
          _$TypePokemonImpl value, $Res Function(_$TypePokemonImpl) then) =
      __$$TypePokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, NamedAPIResource pokemon});

  @override
  $NamedAPIResourceCopyWith<$Res> get pokemon;
}

/// @nodoc
class __$$TypePokemonImplCopyWithImpl<$Res>
    extends _$TypePokemonCopyWithImpl<$Res, _$TypePokemonImpl>
    implements _$$TypePokemonImplCopyWith<$Res> {
  __$$TypePokemonImplCopyWithImpl(
      _$TypePokemonImpl _value, $Res Function(_$TypePokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? pokemon = null,
  }) {
    return _then(_$TypePokemonImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypePokemonImpl implements _TypePokemon {
  const _$TypePokemonImpl({required this.slot, required this.pokemon});

  factory _$TypePokemonImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypePokemonImplFromJson(json);

  @override
  final int slot;
  @override
  final NamedAPIResource pokemon;

  @override
  String toString() {
    return 'TypePokemon(slot: $slot, pokemon: $pokemon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypePokemonImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, pokemon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypePokemonImplCopyWith<_$TypePokemonImpl> get copyWith =>
      __$$TypePokemonImplCopyWithImpl<_$TypePokemonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypePokemonImplToJson(
      this,
    );
  }
}

abstract class _TypePokemon implements TypePokemon {
  const factory _TypePokemon(
      {required final int slot,
      required final NamedAPIResource pokemon}) = _$TypePokemonImpl;

  factory _TypePokemon.fromJson(Map<String, dynamic> json) =
      _$TypePokemonImpl.fromJson;

  @override
  int get slot;
  @override
  NamedAPIResource get pokemon;
  @override
  @JsonKey(ignore: true)
  _$$TypePokemonImplCopyWith<_$TypePokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
