// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function() syncProduct,
    required TResult Function() getLocalProducts,
    required TResult Function(Product model) createTicket,
    required TResult Function(Product model) updateTicket,
    required TResult Function(int id) deleteTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function()? syncProduct,
    TResult? Function()? getLocalProducts,
    TResult? Function(Product model)? createTicket,
    TResult? Function(Product model)? updateTicket,
    TResult? Function(int id)? deleteTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function()? syncProduct,
    TResult Function()? getLocalProducts,
    TResult Function(Product model)? createTicket,
    TResult Function(Product model)? updateTicket,
    TResult Function(int id)? deleteTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_SyncProduct value) syncProduct,
    required TResult Function(_GetLocalProducts value) getLocalProducts,
    required TResult Function(_CreateTicket value) createTicket,
    required TResult Function(_UpdateTicket value) updateTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_SyncProduct value)? syncProduct,
    TResult? Function(_GetLocalProducts value)? getLocalProducts,
    TResult? Function(_CreateTicket value)? createTicket,
    TResult? Function(_UpdateTicket value)? updateTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_SyncProduct value)? syncProduct,
    TResult Function(_GetLocalProducts value)? getLocalProducts,
    TResult Function(_CreateTicket value)? createTicket,
    TResult Function(_UpdateTicket value)? updateTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProductEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function() syncProduct,
    required TResult Function() getLocalProducts,
    required TResult Function(Product model) createTicket,
    required TResult Function(Product model) updateTicket,
    required TResult Function(int id) deleteTicket,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function()? syncProduct,
    TResult? Function()? getLocalProducts,
    TResult? Function(Product model)? createTicket,
    TResult? Function(Product model)? updateTicket,
    TResult? Function(int id)? deleteTicket,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function()? syncProduct,
    TResult Function()? getLocalProducts,
    TResult Function(Product model)? createTicket,
    TResult Function(Product model)? updateTicket,
    TResult Function(int id)? deleteTicket,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_SyncProduct value) syncProduct,
    required TResult Function(_GetLocalProducts value) getLocalProducts,
    required TResult Function(_CreateTicket value) createTicket,
    required TResult Function(_UpdateTicket value) updateTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_SyncProduct value)? syncProduct,
    TResult? Function(_GetLocalProducts value)? getLocalProducts,
    TResult? Function(_CreateTicket value)? createTicket,
    TResult? Function(_UpdateTicket value)? updateTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_SyncProduct value)? syncProduct,
    TResult Function(_GetLocalProducts value)? getLocalProducts,
    TResult Function(_CreateTicket value)? createTicket,
    TResult Function(_UpdateTicket value)? updateTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
          _$GetProductsImpl value, $Res Function(_$GetProductsImpl) then) =
      __$$GetProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductsImpl>
    implements _$$GetProductsImplCopyWith<$Res> {
  __$$GetProductsImplCopyWithImpl(
      _$GetProductsImpl _value, $Res Function(_$GetProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProductsImpl implements _GetProducts {
  const _$GetProductsImpl();

  @override
  String toString() {
    return 'ProductEvent.getProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function() syncProduct,
    required TResult Function() getLocalProducts,
    required TResult Function(Product model) createTicket,
    required TResult Function(Product model) updateTicket,
    required TResult Function(int id) deleteTicket,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function()? syncProduct,
    TResult? Function()? getLocalProducts,
    TResult? Function(Product model)? createTicket,
    TResult? Function(Product model)? updateTicket,
    TResult? Function(int id)? deleteTicket,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function()? syncProduct,
    TResult Function()? getLocalProducts,
    TResult Function(Product model)? createTicket,
    TResult Function(Product model)? updateTicket,
    TResult Function(int id)? deleteTicket,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_SyncProduct value) syncProduct,
    required TResult Function(_GetLocalProducts value) getLocalProducts,
    required TResult Function(_CreateTicket value) createTicket,
    required TResult Function(_UpdateTicket value) updateTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_SyncProduct value)? syncProduct,
    TResult? Function(_GetLocalProducts value)? getLocalProducts,
    TResult? Function(_CreateTicket value)? createTicket,
    TResult? Function(_UpdateTicket value)? updateTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_SyncProduct value)? syncProduct,
    TResult Function(_GetLocalProducts value)? getLocalProducts,
    TResult Function(_CreateTicket value)? createTicket,
    TResult Function(_UpdateTicket value)? updateTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements ProductEvent {
  const factory _GetProducts() = _$GetProductsImpl;
}

/// @nodoc
abstract class _$$SyncProductImplCopyWith<$Res> {
  factory _$$SyncProductImplCopyWith(
          _$SyncProductImpl value, $Res Function(_$SyncProductImpl) then) =
      __$$SyncProductImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SyncProductImpl>
    implements _$$SyncProductImplCopyWith<$Res> {
  __$$SyncProductImplCopyWithImpl(
      _$SyncProductImpl _value, $Res Function(_$SyncProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SyncProductImpl implements _SyncProduct {
  const _$SyncProductImpl();

  @override
  String toString() {
    return 'ProductEvent.syncProduct()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncProductImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function() syncProduct,
    required TResult Function() getLocalProducts,
    required TResult Function(Product model) createTicket,
    required TResult Function(Product model) updateTicket,
    required TResult Function(int id) deleteTicket,
  }) {
    return syncProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function()? syncProduct,
    TResult? Function()? getLocalProducts,
    TResult? Function(Product model)? createTicket,
    TResult? Function(Product model)? updateTicket,
    TResult? Function(int id)? deleteTicket,
  }) {
    return syncProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function()? syncProduct,
    TResult Function()? getLocalProducts,
    TResult Function(Product model)? createTicket,
    TResult Function(Product model)? updateTicket,
    TResult Function(int id)? deleteTicket,
    required TResult orElse(),
  }) {
    if (syncProduct != null) {
      return syncProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_SyncProduct value) syncProduct,
    required TResult Function(_GetLocalProducts value) getLocalProducts,
    required TResult Function(_CreateTicket value) createTicket,
    required TResult Function(_UpdateTicket value) updateTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
  }) {
    return syncProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_SyncProduct value)? syncProduct,
    TResult? Function(_GetLocalProducts value)? getLocalProducts,
    TResult? Function(_CreateTicket value)? createTicket,
    TResult? Function(_UpdateTicket value)? updateTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
  }) {
    return syncProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_SyncProduct value)? syncProduct,
    TResult Function(_GetLocalProducts value)? getLocalProducts,
    TResult Function(_CreateTicket value)? createTicket,
    TResult Function(_UpdateTicket value)? updateTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    required TResult orElse(),
  }) {
    if (syncProduct != null) {
      return syncProduct(this);
    }
    return orElse();
  }
}

abstract class _SyncProduct implements ProductEvent {
  const factory _SyncProduct() = _$SyncProductImpl;
}

/// @nodoc
abstract class _$$GetLocalProductsImplCopyWith<$Res> {
  factory _$$GetLocalProductsImplCopyWith(_$GetLocalProductsImpl value,
          $Res Function(_$GetLocalProductsImpl) then) =
      __$$GetLocalProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLocalProductsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetLocalProductsImpl>
    implements _$$GetLocalProductsImplCopyWith<$Res> {
  __$$GetLocalProductsImplCopyWithImpl(_$GetLocalProductsImpl _value,
      $Res Function(_$GetLocalProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetLocalProductsImpl implements _GetLocalProducts {
  const _$GetLocalProductsImpl();

  @override
  String toString() {
    return 'ProductEvent.getLocalProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLocalProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function() syncProduct,
    required TResult Function() getLocalProducts,
    required TResult Function(Product model) createTicket,
    required TResult Function(Product model) updateTicket,
    required TResult Function(int id) deleteTicket,
  }) {
    return getLocalProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function()? syncProduct,
    TResult? Function()? getLocalProducts,
    TResult? Function(Product model)? createTicket,
    TResult? Function(Product model)? updateTicket,
    TResult? Function(int id)? deleteTicket,
  }) {
    return getLocalProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function()? syncProduct,
    TResult Function()? getLocalProducts,
    TResult Function(Product model)? createTicket,
    TResult Function(Product model)? updateTicket,
    TResult Function(int id)? deleteTicket,
    required TResult orElse(),
  }) {
    if (getLocalProducts != null) {
      return getLocalProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_SyncProduct value) syncProduct,
    required TResult Function(_GetLocalProducts value) getLocalProducts,
    required TResult Function(_CreateTicket value) createTicket,
    required TResult Function(_UpdateTicket value) updateTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
  }) {
    return getLocalProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_SyncProduct value)? syncProduct,
    TResult? Function(_GetLocalProducts value)? getLocalProducts,
    TResult? Function(_CreateTicket value)? createTicket,
    TResult? Function(_UpdateTicket value)? updateTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
  }) {
    return getLocalProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_SyncProduct value)? syncProduct,
    TResult Function(_GetLocalProducts value)? getLocalProducts,
    TResult Function(_CreateTicket value)? createTicket,
    TResult Function(_UpdateTicket value)? updateTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    required TResult orElse(),
  }) {
    if (getLocalProducts != null) {
      return getLocalProducts(this);
    }
    return orElse();
  }
}

abstract class _GetLocalProducts implements ProductEvent {
  const factory _GetLocalProducts() = _$GetLocalProductsImpl;
}

/// @nodoc
abstract class _$$CreateTicketImplCopyWith<$Res> {
  factory _$$CreateTicketImplCopyWith(
          _$CreateTicketImpl value, $Res Function(_$CreateTicketImpl) then) =
      __$$CreateTicketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product model});
}

/// @nodoc
class __$$CreateTicketImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$CreateTicketImpl>
    implements _$$CreateTicketImplCopyWith<$Res> {
  __$$CreateTicketImplCopyWithImpl(
      _$CreateTicketImpl _value, $Res Function(_$CreateTicketImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$CreateTicketImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$CreateTicketImpl implements _CreateTicket {
  const _$CreateTicketImpl(this.model);

  @override
  final Product model;

  @override
  String toString() {
    return 'ProductEvent.createTicket(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTicketImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTicketImplCopyWith<_$CreateTicketImpl> get copyWith =>
      __$$CreateTicketImplCopyWithImpl<_$CreateTicketImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function() syncProduct,
    required TResult Function() getLocalProducts,
    required TResult Function(Product model) createTicket,
    required TResult Function(Product model) updateTicket,
    required TResult Function(int id) deleteTicket,
  }) {
    return createTicket(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function()? syncProduct,
    TResult? Function()? getLocalProducts,
    TResult? Function(Product model)? createTicket,
    TResult? Function(Product model)? updateTicket,
    TResult? Function(int id)? deleteTicket,
  }) {
    return createTicket?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function()? syncProduct,
    TResult Function()? getLocalProducts,
    TResult Function(Product model)? createTicket,
    TResult Function(Product model)? updateTicket,
    TResult Function(int id)? deleteTicket,
    required TResult orElse(),
  }) {
    if (createTicket != null) {
      return createTicket(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_SyncProduct value) syncProduct,
    required TResult Function(_GetLocalProducts value) getLocalProducts,
    required TResult Function(_CreateTicket value) createTicket,
    required TResult Function(_UpdateTicket value) updateTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
  }) {
    return createTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_SyncProduct value)? syncProduct,
    TResult? Function(_GetLocalProducts value)? getLocalProducts,
    TResult? Function(_CreateTicket value)? createTicket,
    TResult? Function(_UpdateTicket value)? updateTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
  }) {
    return createTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_SyncProduct value)? syncProduct,
    TResult Function(_GetLocalProducts value)? getLocalProducts,
    TResult Function(_CreateTicket value)? createTicket,
    TResult Function(_UpdateTicket value)? updateTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    required TResult orElse(),
  }) {
    if (createTicket != null) {
      return createTicket(this);
    }
    return orElse();
  }
}

abstract class _CreateTicket implements ProductEvent {
  const factory _CreateTicket(final Product model) = _$CreateTicketImpl;

  Product get model;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTicketImplCopyWith<_$CreateTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTicketImplCopyWith<$Res> {
  factory _$$UpdateTicketImplCopyWith(
          _$UpdateTicketImpl value, $Res Function(_$UpdateTicketImpl) then) =
      __$$UpdateTicketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product model});
}

/// @nodoc
class __$$UpdateTicketImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$UpdateTicketImpl>
    implements _$$UpdateTicketImplCopyWith<$Res> {
  __$$UpdateTicketImplCopyWithImpl(
      _$UpdateTicketImpl _value, $Res Function(_$UpdateTicketImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$UpdateTicketImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$UpdateTicketImpl implements _UpdateTicket {
  const _$UpdateTicketImpl(this.model);

  @override
  final Product model;

  @override
  String toString() {
    return 'ProductEvent.updateTicket(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTicketImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTicketImplCopyWith<_$UpdateTicketImpl> get copyWith =>
      __$$UpdateTicketImplCopyWithImpl<_$UpdateTicketImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function() syncProduct,
    required TResult Function() getLocalProducts,
    required TResult Function(Product model) createTicket,
    required TResult Function(Product model) updateTicket,
    required TResult Function(int id) deleteTicket,
  }) {
    return updateTicket(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function()? syncProduct,
    TResult? Function()? getLocalProducts,
    TResult? Function(Product model)? createTicket,
    TResult? Function(Product model)? updateTicket,
    TResult? Function(int id)? deleteTicket,
  }) {
    return updateTicket?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function()? syncProduct,
    TResult Function()? getLocalProducts,
    TResult Function(Product model)? createTicket,
    TResult Function(Product model)? updateTicket,
    TResult Function(int id)? deleteTicket,
    required TResult orElse(),
  }) {
    if (updateTicket != null) {
      return updateTicket(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_SyncProduct value) syncProduct,
    required TResult Function(_GetLocalProducts value) getLocalProducts,
    required TResult Function(_CreateTicket value) createTicket,
    required TResult Function(_UpdateTicket value) updateTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
  }) {
    return updateTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_SyncProduct value)? syncProduct,
    TResult? Function(_GetLocalProducts value)? getLocalProducts,
    TResult? Function(_CreateTicket value)? createTicket,
    TResult? Function(_UpdateTicket value)? updateTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
  }) {
    return updateTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_SyncProduct value)? syncProduct,
    TResult Function(_GetLocalProducts value)? getLocalProducts,
    TResult Function(_CreateTicket value)? createTicket,
    TResult Function(_UpdateTicket value)? updateTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    required TResult orElse(),
  }) {
    if (updateTicket != null) {
      return updateTicket(this);
    }
    return orElse();
  }
}

abstract class _UpdateTicket implements ProductEvent {
  const factory _UpdateTicket(final Product model) = _$UpdateTicketImpl;

  Product get model;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTicketImplCopyWith<_$UpdateTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTicketImplCopyWith<$Res> {
  factory _$$DeleteTicketImplCopyWith(
          _$DeleteTicketImpl value, $Res Function(_$DeleteTicketImpl) then) =
      __$$DeleteTicketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteTicketImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$DeleteTicketImpl>
    implements _$$DeleteTicketImplCopyWith<$Res> {
  __$$DeleteTicketImplCopyWithImpl(
      _$DeleteTicketImpl _value, $Res Function(_$DeleteTicketImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTicketImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTicketImpl implements _DeleteTicket {
  const _$DeleteTicketImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ProductEvent.deleteTicket(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTicketImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTicketImplCopyWith<_$DeleteTicketImpl> get copyWith =>
      __$$DeleteTicketImplCopyWithImpl<_$DeleteTicketImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProducts,
    required TResult Function() syncProduct,
    required TResult Function() getLocalProducts,
    required TResult Function(Product model) createTicket,
    required TResult Function(Product model) updateTicket,
    required TResult Function(int id) deleteTicket,
  }) {
    return deleteTicket(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getProducts,
    TResult? Function()? syncProduct,
    TResult? Function()? getLocalProducts,
    TResult? Function(Product model)? createTicket,
    TResult? Function(Product model)? updateTicket,
    TResult? Function(int id)? deleteTicket,
  }) {
    return deleteTicket?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProducts,
    TResult Function()? syncProduct,
    TResult Function()? getLocalProducts,
    TResult Function(Product model)? createTicket,
    TResult Function(Product model)? updateTicket,
    TResult Function(int id)? deleteTicket,
    required TResult orElse(),
  }) {
    if (deleteTicket != null) {
      return deleteTicket(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_SyncProduct value) syncProduct,
    required TResult Function(_GetLocalProducts value) getLocalProducts,
    required TResult Function(_CreateTicket value) createTicket,
    required TResult Function(_UpdateTicket value) updateTicket,
    required TResult Function(_DeleteTicket value) deleteTicket,
  }) {
    return deleteTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_SyncProduct value)? syncProduct,
    TResult? Function(_GetLocalProducts value)? getLocalProducts,
    TResult? Function(_CreateTicket value)? createTicket,
    TResult? Function(_UpdateTicket value)? updateTicket,
    TResult? Function(_DeleteTicket value)? deleteTicket,
  }) {
    return deleteTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_SyncProduct value)? syncProduct,
    TResult Function(_GetLocalProducts value)? getLocalProducts,
    TResult Function(_CreateTicket value)? createTicket,
    TResult Function(_UpdateTicket value)? updateTicket,
    TResult Function(_DeleteTicket value)? deleteTicket,
    required TResult orElse(),
  }) {
    if (deleteTicket != null) {
      return deleteTicket(this);
    }
    return orElse();
  }
}

abstract class _DeleteTicket implements ProductEvent {
  const factory _DeleteTicket(final int id) = _$DeleteTicketImpl;

  int get id;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTicketImplCopyWith<_$DeleteTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProductState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$SuccessImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<Product> products) : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductState.success(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) success,
    required TResult Function(String message) error,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ProductState {
  const factory _Success(final List<Product> products) = _$SuccessImpl;

  List<Product> get products;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProductState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
