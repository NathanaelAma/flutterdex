// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NamedAPIResource _$NamedAPIResourceFromJson(Map<String, dynamic> json) {
  return _NamedAPIResource.fromJson(json);
}

/// @nodoc
mixin _$NamedAPIResource {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NamedAPIResourceCopyWith<NamedAPIResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamedAPIResourceCopyWith<$Res> {
  factory $NamedAPIResourceCopyWith(
          NamedAPIResource value, $Res Function(NamedAPIResource) then) =
      _$NamedAPIResourceCopyWithImpl<$Res, NamedAPIResource>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$NamedAPIResourceCopyWithImpl<$Res, $Val extends NamedAPIResource>
    implements $NamedAPIResourceCopyWith<$Res> {
  _$NamedAPIResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NamedAPIResourceImplCopyWith<$Res>
    implements $NamedAPIResourceCopyWith<$Res> {
  factory _$$NamedAPIResourceImplCopyWith(_$NamedAPIResourceImpl value,
          $Res Function(_$NamedAPIResourceImpl) then) =
      __$$NamedAPIResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$NamedAPIResourceImplCopyWithImpl<$Res>
    extends _$NamedAPIResourceCopyWithImpl<$Res, _$NamedAPIResourceImpl>
    implements _$$NamedAPIResourceImplCopyWith<$Res> {
  __$$NamedAPIResourceImplCopyWithImpl(_$NamedAPIResourceImpl _value,
      $Res Function(_$NamedAPIResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$NamedAPIResourceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NamedAPIResourceImpl implements _NamedAPIResource {
  const _$NamedAPIResourceImpl({required this.name, required this.url});

  factory _$NamedAPIResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamedAPIResourceImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'NamedAPIResource(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamedAPIResourceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NamedAPIResourceImplCopyWith<_$NamedAPIResourceImpl> get copyWith =>
      __$$NamedAPIResourceImplCopyWithImpl<_$NamedAPIResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamedAPIResourceImplToJson(
      this,
    );
  }
}

abstract class _NamedAPIResource implements NamedAPIResource {
  const factory _NamedAPIResource(
      {required final String name,
      required final String url}) = _$NamedAPIResourceImpl;

  factory _NamedAPIResource.fromJson(Map<String, dynamic> json) =
      _$NamedAPIResourceImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$NamedAPIResourceImplCopyWith<_$NamedAPIResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

APIResource _$APIResourceFromJson(Map<String, dynamic> json) {
  return _APIResource.fromJson(json);
}

/// @nodoc
mixin _$APIResource {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIResourceCopyWith<APIResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResourceCopyWith<$Res> {
  factory $APIResourceCopyWith(
          APIResource value, $Res Function(APIResource) then) =
      _$APIResourceCopyWithImpl<$Res, APIResource>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$APIResourceCopyWithImpl<$Res, $Val extends APIResource>
    implements $APIResourceCopyWith<$Res> {
  _$APIResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APIResourceImplCopyWith<$Res>
    implements $APIResourceCopyWith<$Res> {
  factory _$$APIResourceImplCopyWith(
          _$APIResourceImpl value, $Res Function(_$APIResourceImpl) then) =
      __$$APIResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$APIResourceImplCopyWithImpl<$Res>
    extends _$APIResourceCopyWithImpl<$Res, _$APIResourceImpl>
    implements _$$APIResourceImplCopyWith<$Res> {
  __$$APIResourceImplCopyWithImpl(
      _$APIResourceImpl _value, $Res Function(_$APIResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$APIResourceImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$APIResourceImpl implements _APIResource {
  const _$APIResourceImpl({required this.url});

  factory _$APIResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$APIResourceImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'APIResource(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIResourceImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$APIResourceImplCopyWith<_$APIResourceImpl> get copyWith =>
      __$$APIResourceImplCopyWithImpl<_$APIResourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$APIResourceImplToJson(
      this,
    );
  }
}

abstract class _APIResource implements APIResource {
  const factory _APIResource({required final String url}) = _$APIResourceImpl;

  factory _APIResource.fromJson(Map<String, dynamic> json) =
      _$APIResourceImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$APIResourceImplCopyWith<_$APIResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  String get name => throw _privateConstructorUsedError;
  NamedAPIResource get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res, Name>;
  @useResult
  $Res call({String name, NamedAPIResource language});

  $NamedAPIResourceCopyWith<$Res> get language;
}

/// @nodoc
class _$NameCopyWithImpl<$Res, $Val extends Name>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$NameImplCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$NameImplCopyWith(
          _$NameImpl value, $Res Function(_$NameImpl) then) =
      __$$NameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, NamedAPIResource language});

  @override
  $NamedAPIResourceCopyWith<$Res> get language;
}

/// @nodoc
class __$$NameImplCopyWithImpl<$Res>
    extends _$NameCopyWithImpl<$Res, _$NameImpl>
    implements _$$NameImplCopyWith<$Res> {
  __$$NameImplCopyWithImpl(_$NameImpl _value, $Res Function(_$NameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? language = null,
  }) {
    return _then(_$NameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$NameImpl implements _Name {
  const _$NameImpl({required this.name, required this.language});

  factory _$NameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameImplFromJson(json);

  @override
  final String name;
  @override
  final NamedAPIResource language;

  @override
  String toString() {
    return 'Name(name: $name, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      __$$NameImplCopyWithImpl<_$NameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameImplToJson(
      this,
    );
  }
}

abstract class _Name implements Name {
  const factory _Name(
      {required final String name,
      required final NamedAPIResource language}) = _$NameImpl;

  factory _Name.fromJson(Map<String, dynamic> json) = _$NameImpl.fromJson;

  @override
  String get name;
  @override
  NamedAPIResource get language;
  @override
  @JsonKey(ignore: true)
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlavorText _$FlavorTextFromJson(Map<String, dynamic> json) {
  return _FlavorText.fromJson(json);
}

/// @nodoc
mixin _$FlavorText {
  String get flavor_text => throw _privateConstructorUsedError;
  NamedAPIResource get language => throw _privateConstructorUsedError;
  NamedAPIResource get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlavorTextCopyWith<FlavorText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorTextCopyWith<$Res> {
  factory $FlavorTextCopyWith(
          FlavorText value, $Res Function(FlavorText) then) =
      _$FlavorTextCopyWithImpl<$Res, FlavorText>;
  @useResult
  $Res call(
      {String flavor_text,
      NamedAPIResource language,
      NamedAPIResource version});

  $NamedAPIResourceCopyWith<$Res> get language;
  $NamedAPIResourceCopyWith<$Res> get version;
}

/// @nodoc
class _$FlavorTextCopyWithImpl<$Res, $Val extends FlavorText>
    implements $FlavorTextCopyWith<$Res> {
  _$FlavorTextCopyWithImpl(this._value, this._then);

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
abstract class _$$FlavorTextImplCopyWith<$Res>
    implements $FlavorTextCopyWith<$Res> {
  factory _$$FlavorTextImplCopyWith(
          _$FlavorTextImpl value, $Res Function(_$FlavorTextImpl) then) =
      __$$FlavorTextImplCopyWithImpl<$Res>;
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
class __$$FlavorTextImplCopyWithImpl<$Res>
    extends _$FlavorTextCopyWithImpl<$Res, _$FlavorTextImpl>
    implements _$$FlavorTextImplCopyWith<$Res> {
  __$$FlavorTextImplCopyWithImpl(
      _$FlavorTextImpl _value, $Res Function(_$FlavorTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor_text = null,
    Object? language = null,
    Object? version = null,
  }) {
    return _then(_$FlavorTextImpl(
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
class _$FlavorTextImpl implements _FlavorText {
  const _$FlavorTextImpl(
      {required this.flavor_text,
      required this.language,
      required this.version});

  factory _$FlavorTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlavorTextImplFromJson(json);

  @override
  final String flavor_text;
  @override
  final NamedAPIResource language;
  @override
  final NamedAPIResource version;

  @override
  String toString() {
    return 'FlavorText(flavor_text: $flavor_text, language: $language, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorTextImpl &&
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
  _$$FlavorTextImplCopyWith<_$FlavorTextImpl> get copyWith =>
      __$$FlavorTextImplCopyWithImpl<_$FlavorTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlavorTextImplToJson(
      this,
    );
  }
}

abstract class _FlavorText implements FlavorText {
  const factory _FlavorText(
      {required final String flavor_text,
      required final NamedAPIResource language,
      required final NamedAPIResource version}) = _$FlavorTextImpl;

  factory _FlavorText.fromJson(Map<String, dynamic> json) =
      _$FlavorTextImpl.fromJson;

  @override
  String get flavor_text;
  @override
  NamedAPIResource get language;
  @override
  NamedAPIResource get version;
  @override
  @JsonKey(ignore: true)
  _$$FlavorTextImplCopyWith<_$FlavorTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
