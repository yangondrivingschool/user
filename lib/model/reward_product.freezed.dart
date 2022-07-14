// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reward_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardProduct _$RewardProductFromJson(Map<String, dynamic> json) {
  return _RewardProduct.fromJson(json);
}

/// @nodoc
class _$RewardProductTearOff {
  const _$RewardProductTearOff();

  _RewardProduct call(
      {required String id,
      required String name,
      @JsonKey(nullable: true) String? description,
      required String image,
      required int requirePoint,
      @JsonKey(nullable: true, defaultValue: 0) int? count}) {
    return _RewardProduct(
      id: id,
      name: name,
      description: description,
      image: image,
      requirePoint: requirePoint,
      count: count,
    );
  }

  RewardProduct fromJson(Map<String, Object?> json) {
    return RewardProduct.fromJson(json);
  }
}

/// @nodoc
const $RewardProduct = _$RewardProductTearOff();

/// @nodoc
mixin _$RewardProduct {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(nullable: true)
  String? get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get requirePoint => throw _privateConstructorUsedError;
  @JsonKey(nullable: true, defaultValue: 0)
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardProductCopyWith<RewardProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardProductCopyWith<$Res> {
  factory $RewardProductCopyWith(
          RewardProduct value, $Res Function(RewardProduct) then) =
      _$RewardProductCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(nullable: true) String? description,
      String image,
      int requirePoint,
      @JsonKey(nullable: true, defaultValue: 0) int? count});
}

/// @nodoc
class _$RewardProductCopyWithImpl<$Res>
    implements $RewardProductCopyWith<$Res> {
  _$RewardProductCopyWithImpl(this._value, this._then);

  final RewardProduct _value;
  // ignore: unused_field
  final $Res Function(RewardProduct) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? requirePoint = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      requirePoint: requirePoint == freezed
          ? _value.requirePoint
          : requirePoint // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RewardProductCopyWith<$Res>
    implements $RewardProductCopyWith<$Res> {
  factory _$RewardProductCopyWith(
          _RewardProduct value, $Res Function(_RewardProduct) then) =
      __$RewardProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(nullable: true) String? description,
      String image,
      int requirePoint,
      @JsonKey(nullable: true, defaultValue: 0) int? count});
}

/// @nodoc
class __$RewardProductCopyWithImpl<$Res>
    extends _$RewardProductCopyWithImpl<$Res>
    implements _$RewardProductCopyWith<$Res> {
  __$RewardProductCopyWithImpl(
      _RewardProduct _value, $Res Function(_RewardProduct) _then)
      : super(_value, (v) => _then(v as _RewardProduct));

  @override
  _RewardProduct get _value => super._value as _RewardProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? requirePoint = freezed,
    Object? count = freezed,
  }) {
    return _then(_RewardProduct(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      requirePoint: requirePoint == freezed
          ? _value.requirePoint
          : requirePoint // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RewardProduct implements _RewardProduct {
  _$_RewardProduct(
      {required this.id,
      required this.name,
      @JsonKey(nullable: true) this.description,
      required this.image,
      required this.requirePoint,
      @JsonKey(nullable: true, defaultValue: 0) this.count});

  factory _$_RewardProduct.fromJson(Map<String, dynamic> json) =>
      _$$_RewardProductFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(nullable: true)
  final String? description;
  @override
  final String image;
  @override
  final int requirePoint;
  @override
  @JsonKey(nullable: true, defaultValue: 0)
  final int? count;

  @override
  String toString() {
    return 'RewardProduct(id: $id, name: $name, description: $description, image: $image, requirePoint: $requirePoint, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardProduct &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.requirePoint, requirePoint) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(requirePoint),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$RewardProductCopyWith<_RewardProduct> get copyWith =>
      __$RewardProductCopyWithImpl<_RewardProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardProductToJson(this);
  }
}

abstract class _RewardProduct implements RewardProduct {
  factory _RewardProduct(
      {required String id,
      required String name,
      @JsonKey(nullable: true) String? description,
      required String image,
      required int requirePoint,
      @JsonKey(nullable: true, defaultValue: 0) int? count}) = _$_RewardProduct;

  factory _RewardProduct.fromJson(Map<String, dynamic> json) =
      _$_RewardProduct.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(nullable: true)
  String? get description;
  @override
  String get image;
  @override
  int get requirePoint;
  @override
  @JsonKey(nullable: true, defaultValue: 0)
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$RewardProductCopyWith<_RewardProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
