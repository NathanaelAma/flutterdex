// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSpecies _$PokemonSpeciesFromJson(Map<String, dynamic> json) {
  return _PokemonSpecies.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpecies {
  int get capture_rate => throw _privateConstructorUsedError;
  List<NamedAPIResource> get egg_groups => throw _privateConstructorUsedError;
  APIResource get evolution_chain => throw _privateConstructorUsedError;
  List<FlavorTextEntry> get flavor_text_entries =>
      throw _privateConstructorUsedError;
  int get gender_rate => throw _privateConstructorUsedError;
  List<Genus> get genera => throw _privateConstructorUsedError;
  NamedAPIResource get generation => throw _privateConstructorUsedError;
  NamedAPIResource get habitat => throw _privateConstructorUsedError;
  int get hatch_counter => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  bool get is_baby => throw _privateConstructorUsedError;
  bool get is_legendary => throw _privateConstructorUsedError;
  bool get is_mythical => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Name> get names => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesCopyWith<PokemonSpecies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesCopyWith<$Res> {
  factory $PokemonSpeciesCopyWith(
          PokemonSpecies value, $Res Function(PokemonSpecies) then) =
      _$PokemonSpeciesCopyWithImpl<$Res, PokemonSpecies>;
  @useResult
  $Res call(
      {int capture_rate,
      List<NamedAPIResource> egg_groups,
      APIResource evolution_chain,
      List<FlavorTextEntry> flavor_text_entries,
      int gender_rate,
      List<Genus> genera,
      NamedAPIResource generation,
      NamedAPIResource habitat,
      int hatch_counter,
      int id,
      bool is_baby,
      bool is_legendary,
      bool is_mythical,
      String name,
      List<Name> names});

  $APIResourceCopyWith<$Res> get evolution_chain;
  $NamedAPIResourceCopyWith<$Res> get generation;
  $NamedAPIResourceCopyWith<$Res> get habitat;
}

/// @nodoc
class _$PokemonSpeciesCopyWithImpl<$Res, $Val extends PokemonSpecies>
    implements $PokemonSpeciesCopyWith<$Res> {
  _$PokemonSpeciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capture_rate = null,
    Object? egg_groups = null,
    Object? evolution_chain = null,
    Object? flavor_text_entries = null,
    Object? gender_rate = null,
    Object? genera = null,
    Object? generation = null,
    Object? habitat = null,
    Object? hatch_counter = null,
    Object? id = null,
    Object? is_baby = null,
    Object? is_legendary = null,
    Object? is_mythical = null,
    Object? name = null,
    Object? names = null,
  }) {
    return _then(_value.copyWith(
      capture_rate: null == capture_rate
          ? _value.capture_rate
          : capture_rate // ignore: cast_nullable_to_non_nullable
              as int,
      egg_groups: null == egg_groups
          ? _value.egg_groups
          : egg_groups // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      evolution_chain: null == evolution_chain
          ? _value.evolution_chain
          : evolution_chain // ignore: cast_nullable_to_non_nullable
              as APIResource,
      flavor_text_entries: null == flavor_text_entries
          ? _value.flavor_text_entries
          : flavor_text_entries // ignore: cast_nullable_to_non_nullable
              as List<FlavorTextEntry>,
      gender_rate: null == gender_rate
          ? _value.gender_rate
          : gender_rate // ignore: cast_nullable_to_non_nullable
              as int,
      genera: null == genera
          ? _value.genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<Genus>,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      habitat: null == habitat
          ? _value.habitat
          : habitat // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      hatch_counter: null == hatch_counter
          ? _value.hatch_counter
          : hatch_counter // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_baby: null == is_baby
          ? _value.is_baby
          : is_baby // ignore: cast_nullable_to_non_nullable
              as bool,
      is_legendary: null == is_legendary
          ? _value.is_legendary
          : is_legendary // ignore: cast_nullable_to_non_nullable
              as bool,
      is_mythical: null == is_mythical
          ? _value.is_mythical
          : is_mythical // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $APIResourceCopyWith<$Res> get evolution_chain {
    return $APIResourceCopyWith<$Res>(_value.evolution_chain, (value) {
      return _then(_value.copyWith(evolution_chain: value) as $Val);
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
  $NamedAPIResourceCopyWith<$Res> get habitat {
    return $NamedAPIResourceCopyWith<$Res>(_value.habitat, (value) {
      return _then(_value.copyWith(habitat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesImplCopyWith<$Res>
    implements $PokemonSpeciesCopyWith<$Res> {
  factory _$$PokemonSpeciesImplCopyWith(_$PokemonSpeciesImpl value,
          $Res Function(_$PokemonSpeciesImpl) then) =
      __$$PokemonSpeciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int capture_rate,
      List<NamedAPIResource> egg_groups,
      APIResource evolution_chain,
      List<FlavorTextEntry> flavor_text_entries,
      int gender_rate,
      List<Genus> genera,
      NamedAPIResource generation,
      NamedAPIResource habitat,
      int hatch_counter,
      int id,
      bool is_baby,
      bool is_legendary,
      bool is_mythical,
      String name,
      List<Name> names});

  @override
  $APIResourceCopyWith<$Res> get evolution_chain;
  @override
  $NamedAPIResourceCopyWith<$Res> get generation;
  @override
  $NamedAPIResourceCopyWith<$Res> get habitat;
}

/// @nodoc
class __$$PokemonSpeciesImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesCopyWithImpl<$Res, _$PokemonSpeciesImpl>
    implements _$$PokemonSpeciesImplCopyWith<$Res> {
  __$$PokemonSpeciesImplCopyWithImpl(
      _$PokemonSpeciesImpl _value, $Res Function(_$PokemonSpeciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capture_rate = null,
    Object? egg_groups = null,
    Object? evolution_chain = null,
    Object? flavor_text_entries = null,
    Object? gender_rate = null,
    Object? genera = null,
    Object? generation = null,
    Object? habitat = null,
    Object? hatch_counter = null,
    Object? id = null,
    Object? is_baby = null,
    Object? is_legendary = null,
    Object? is_mythical = null,
    Object? name = null,
    Object? names = null,
  }) {
    return _then(_$PokemonSpeciesImpl(
      capture_rate: null == capture_rate
          ? _value.capture_rate
          : capture_rate // ignore: cast_nullable_to_non_nullable
              as int,
      egg_groups: null == egg_groups
          ? _value._egg_groups
          : egg_groups // ignore: cast_nullable_to_non_nullable
              as List<NamedAPIResource>,
      evolution_chain: null == evolution_chain
          ? _value.evolution_chain
          : evolution_chain // ignore: cast_nullable_to_non_nullable
              as APIResource,
      flavor_text_entries: null == flavor_text_entries
          ? _value._flavor_text_entries
          : flavor_text_entries // ignore: cast_nullable_to_non_nullable
              as List<FlavorTextEntry>,
      gender_rate: null == gender_rate
          ? _value.gender_rate
          : gender_rate // ignore: cast_nullable_to_non_nullable
              as int,
      genera: null == genera
          ? _value._genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<Genus>,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      habitat: null == habitat
          ? _value.habitat
          : habitat // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      hatch_counter: null == hatch_counter
          ? _value.hatch_counter
          : hatch_counter // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      is_baby: null == is_baby
          ? _value.is_baby
          : is_baby // ignore: cast_nullable_to_non_nullable
              as bool,
      is_legendary: null == is_legendary
          ? _value.is_legendary
          : is_legendary // ignore: cast_nullable_to_non_nullable
              as bool,
      is_mythical: null == is_mythical
          ? _value.is_mythical
          : is_mythical // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<Name>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesImpl implements _PokemonSpecies {
  const _$PokemonSpeciesImpl(
      {required this.capture_rate,
      required final List<NamedAPIResource> egg_groups,
      required this.evolution_chain,
      required final List<FlavorTextEntry> flavor_text_entries,
      required this.gender_rate,
      required final List<Genus> genera,
      required this.generation,
      required this.habitat,
      required this.hatch_counter,
      required this.id,
      required this.is_baby,
      required this.is_legendary,
      required this.is_mythical,
      required this.name,
      required final List<Name> names})
      : _egg_groups = egg_groups,
        _flavor_text_entries = flavor_text_entries,
        _genera = genera,
        _names = names;

  factory _$PokemonSpeciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesImplFromJson(json);

  @override
  final int capture_rate;
  final List<NamedAPIResource> _egg_groups;
  @override
  List<NamedAPIResource> get egg_groups {
    if (_egg_groups is EqualUnmodifiableListView) return _egg_groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_egg_groups);
  }

  @override
  final APIResource evolution_chain;
  final List<FlavorTextEntry> _flavor_text_entries;
  @override
  List<FlavorTextEntry> get flavor_text_entries {
    if (_flavor_text_entries is EqualUnmodifiableListView)
      return _flavor_text_entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flavor_text_entries);
  }

  @override
  final int gender_rate;
  final List<Genus> _genera;
  @override
  List<Genus> get genera {
    if (_genera is EqualUnmodifiableListView) return _genera;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genera);
  }

  @override
  final NamedAPIResource generation;
  @override
  final NamedAPIResource habitat;
  @override
  final int hatch_counter;
  @override
  final int id;
  @override
  final bool is_baby;
  @override
  final bool is_legendary;
  @override
  final bool is_mythical;
  @override
  final String name;
  final List<Name> _names;
  @override
  List<Name> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  String toString() {
    return 'PokemonSpecies(capture_rate: $capture_rate, egg_groups: $egg_groups, evolution_chain: $evolution_chain, flavor_text_entries: $flavor_text_entries, gender_rate: $gender_rate, genera: $genera, generation: $generation, habitat: $habitat, hatch_counter: $hatch_counter, id: $id, is_baby: $is_baby, is_legendary: $is_legendary, is_mythical: $is_mythical, name: $name, names: $names)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesImpl &&
            (identical(other.capture_rate, capture_rate) ||
                other.capture_rate == capture_rate) &&
            const DeepCollectionEquality()
                .equals(other._egg_groups, _egg_groups) &&
            (identical(other.evolution_chain, evolution_chain) ||
                other.evolution_chain == evolution_chain) &&
            const DeepCollectionEquality()
                .equals(other._flavor_text_entries, _flavor_text_entries) &&
            (identical(other.gender_rate, gender_rate) ||
                other.gender_rate == gender_rate) &&
            const DeepCollectionEquality().equals(other._genera, _genera) &&
            (identical(other.generation, generation) ||
                other.generation == generation) &&
            (identical(other.habitat, habitat) || other.habitat == habitat) &&
            (identical(other.hatch_counter, hatch_counter) ||
                other.hatch_counter == hatch_counter) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.is_baby, is_baby) || other.is_baby == is_baby) &&
            (identical(other.is_legendary, is_legendary) ||
                other.is_legendary == is_legendary) &&
            (identical(other.is_mythical, is_mythical) ||
                other.is_mythical == is_mythical) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._names, _names));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      capture_rate,
      const DeepCollectionEquality().hash(_egg_groups),
      evolution_chain,
      const DeepCollectionEquality().hash(_flavor_text_entries),
      gender_rate,
      const DeepCollectionEquality().hash(_genera),
      generation,
      habitat,
      hatch_counter,
      id,
      is_baby,
      is_legendary,
      is_mythical,
      name,
      const DeepCollectionEquality().hash(_names));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesImplCopyWith<_$PokemonSpeciesImpl> get copyWith =>
      __$$PokemonSpeciesImplCopyWithImpl<_$PokemonSpeciesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpecies implements PokemonSpecies {
  const factory _PokemonSpecies(
      {required final int capture_rate,
      required final List<NamedAPIResource> egg_groups,
      required final APIResource evolution_chain,
      required final List<FlavorTextEntry> flavor_text_entries,
      required final int gender_rate,
      required final List<Genus> genera,
      required final NamedAPIResource generation,
      required final NamedAPIResource habitat,
      required final int hatch_counter,
      required final int id,
      required final bool is_baby,
      required final bool is_legendary,
      required final bool is_mythical,
      required final String name,
      required final List<Name> names}) = _$PokemonSpeciesImpl;

  factory _PokemonSpecies.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesImpl.fromJson;

  @override
  int get capture_rate;
  @override
  List<NamedAPIResource> get egg_groups;
  @override
  APIResource get evolution_chain;
  @override
  List<FlavorTextEntry> get flavor_text_entries;
  @override
  int get gender_rate;
  @override
  List<Genus> get genera;
  @override
  NamedAPIResource get generation;
  @override
  NamedAPIResource get habitat;
  @override
  int get hatch_counter;
  @override
  int get id;
  @override
  bool get is_baby;
  @override
  bool get is_legendary;
  @override
  bool get is_mythical;
  @override
  String get name;
  @override
  List<Name> get names;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSpeciesImplCopyWith<_$PokemonSpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlavorTextEntry _$FlavorTextEntryFromJson(Map<String, dynamic> json) {
  return _FlavorTextEntry.fromJson(json);
}

/// @nodoc
mixin _$FlavorTextEntry {
  String get flavor_text => throw _privateConstructorUsedError;
  NamedAPIResource get language => throw _privateConstructorUsedError;
  NamedAPIResource get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlavorTextEntryCopyWith<FlavorTextEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorTextEntryCopyWith<$Res> {
  factory $FlavorTextEntryCopyWith(
          FlavorTextEntry value, $Res Function(FlavorTextEntry) then) =
      _$FlavorTextEntryCopyWithImpl<$Res, FlavorTextEntry>;
  @useResult
  $Res call(
      {String flavor_text,
      NamedAPIResource language,
      NamedAPIResource version});

  $NamedAPIResourceCopyWith<$Res> get language;
  $NamedAPIResourceCopyWith<$Res> get version;
}

/// @nodoc
class _$FlavorTextEntryCopyWithImpl<$Res, $Val extends FlavorTextEntry>
    implements $FlavorTextEntryCopyWith<$Res> {
  _$FlavorTextEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor_text = null,
    Object? language = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      flavor_text: null == flavor_text
          ? _value.flavor_text
          : flavor_text // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get language {
    return $NamedAPIResourceCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get version {
    return $NamedAPIResourceCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlavorTextEntryImplCopyWith<$Res>
    implements $FlavorTextEntryCopyWith<$Res> {
  factory _$$FlavorTextEntryImplCopyWith(_$FlavorTextEntryImpl value,
          $Res Function(_$FlavorTextEntryImpl) then) =
      __$$FlavorTextEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String flavor_text,
      NamedAPIResource language,
      NamedAPIResource version});

  @override
  $NamedAPIResourceCopyWith<$Res> get language;
  @override
  $NamedAPIResourceCopyWith<$Res> get version;
}

/// @nodoc
class __$$FlavorTextEntryImplCopyWithImpl<$Res>
    extends _$FlavorTextEntryCopyWithImpl<$Res, _$FlavorTextEntryImpl>
    implements _$$FlavorTextEntryImplCopyWith<$Res> {
  __$$FlavorTextEntryImplCopyWithImpl(
      _$FlavorTextEntryImpl _value, $Res Function(_$FlavorTextEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor_text = null,
    Object? language = null,
    Object? version = null,
  }) {
    return _then(_$FlavorTextEntryImpl(
      flavor_text: null == flavor_text
          ? _value.flavor_text
          : flavor_text // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlavorTextEntryImpl implements _FlavorTextEntry {
  const _$FlavorTextEntryImpl(
      {required this.flavor_text,
      required this.language,
      required this.version});

  factory _$FlavorTextEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlavorTextEntryImplFromJson(json);

  @override
  final String flavor_text;
  @override
  final NamedAPIResource language;
  @override
  final NamedAPIResource version;

  @override
  String toString() {
    return 'FlavorTextEntry(flavor_text: $flavor_text, language: $language, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorTextEntryImpl &&
            (identical(other.flavor_text, flavor_text) ||
                other.flavor_text == flavor_text) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flavor_text, language, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorTextEntryImplCopyWith<_$FlavorTextEntryImpl> get copyWith =>
      __$$FlavorTextEntryImplCopyWithImpl<_$FlavorTextEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlavorTextEntryImplToJson(
      this,
    );
  }
}

abstract class _FlavorTextEntry implements FlavorTextEntry {
  const factory _FlavorTextEntry(
      {required final String flavor_text,
      required final NamedAPIResource language,
      required final NamedAPIResource version}) = _$FlavorTextEntryImpl;

  factory _FlavorTextEntry.fromJson(Map<String, dynamic> json) =
      _$FlavorTextEntryImpl.fromJson;

  @override
  String get flavor_text;
  @override
  NamedAPIResource get language;
  @override
  NamedAPIResource get version;
  @override
  @JsonKey(ignore: true)
  _$$FlavorTextEntryImplCopyWith<_$FlavorTextEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Genus _$GenusFromJson(Map<String, dynamic> json) {
  return _Genus.fromJson(json);
}

/// @nodoc
mixin _$Genus {
  String get genus => throw _privateConstructorUsedError;
  NamedAPIResource get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenusCopyWith<Genus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenusCopyWith<$Res> {
  factory $GenusCopyWith(Genus value, $Res Function(Genus) then) =
      _$GenusCopyWithImpl<$Res, Genus>;
  @useResult
  $Res call({String genus, NamedAPIResource language});

  $NamedAPIResourceCopyWith<$Res> get language;
}

/// @nodoc
class _$GenusCopyWithImpl<$Res, $Val extends Genus>
    implements $GenusCopyWith<$Res> {
  _$GenusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genus = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NamedAPIResourceCopyWith<$Res> get language {
    return $NamedAPIResourceCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenusImplCopyWith<$Res> implements $GenusCopyWith<$Res> {
  factory _$$GenusImplCopyWith(
          _$GenusImpl value, $Res Function(_$GenusImpl) then) =
      __$$GenusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String genus, NamedAPIResource language});

  @override
  $NamedAPIResourceCopyWith<$Res> get language;
}

/// @nodoc
class __$$GenusImplCopyWithImpl<$Res>
    extends _$GenusCopyWithImpl<$Res, _$GenusImpl>
    implements _$$GenusImplCopyWith<$Res> {
  __$$GenusImplCopyWithImpl(
      _$GenusImpl _value, $Res Function(_$GenusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genus = null,
    Object? language = null,
  }) {
    return _then(_$GenusImpl(
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as NamedAPIResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenusImpl implements _Genus {
  const _$GenusImpl({required this.genus, required this.language});

  factory _$GenusImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenusImplFromJson(json);

  @override
  final String genus;
  @override
  final NamedAPIResource language;

  @override
  String toString() {
    return 'Genus(genus: $genus, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenusImpl &&
            (identical(other.genus, genus) || other.genus == genus) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, genus, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenusImplCopyWith<_$GenusImpl> get copyWith =>
      __$$GenusImplCopyWithImpl<_$GenusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenusImplToJson(
      this,
    );
  }
}

abstract class _Genus implements Genus {
  const factory _Genus(
      {required final String genus,
      required final NamedAPIResource language}) = _$GenusImpl;

  factory _Genus.fromJson(Map<String, dynamic> json) = _$GenusImpl.fromJson;

  @override
  String get genus;
  @override
  NamedAPIResource get language;
  @override
  @JsonKey(ignore: true)
  _$$GenusImplCopyWith<_$GenusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
