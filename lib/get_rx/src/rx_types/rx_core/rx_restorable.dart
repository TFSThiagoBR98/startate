part of '../rx_types.dart';

class RestorableRx<T> extends RestorableListenable<Rx<T>> {
  final Rx<T> defaultValue;

  RestorableRx(this.defaultValue);

  @override
  Rx<T> createDefaultValue() {
    return defaultValue;
  }

  @override
  Rx<T> fromPrimitives(Object? data) {
    return Rx<T>(data as T);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

class RestorableRxn<T> extends RestorableListenable<Rxn<T>> {
  final Rxn<T> defaultValue;

  RestorableRxn(this.defaultValue);

  @override
  Rxn<T> createDefaultValue() {
    return defaultValue;
  }

  @override
  Rxn<T> fromPrimitives(Object? data) {
    return Rxn<T>(data as T?);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

// Types

class RestorableRxString extends RestorableListenable<RxString> {
  final RxString defaultValue;

  RestorableRxString(this.defaultValue);

  @override
  RxString createDefaultValue() {
    return defaultValue;
  }

  @override
  RxString fromPrimitives(Object? data) {
    return RxString(data as String);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

class RestorableRxnString extends RestorableListenable<RxnString> {
  final RxnString defaultValue;

  RestorableRxnString(this.defaultValue);

  @override
  RxnString createDefaultValue() {
    return defaultValue;
  }

  @override
  RxnString fromPrimitives(Object? data) {
    return RxnString(data as String);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

class RestorableRxNum extends RestorableListenable<RxNum> {
  final RxNum defaultValue;

  RestorableRxNum(this.defaultValue);

  @override
  RxNum createDefaultValue() {
    return defaultValue;
  }

  @override
  RxNum fromPrimitives(Object? data) {
    return RxNum(data as num);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

class RestorableRxnNum extends RestorableListenable<RxnNum> {
  final RxnNum defaultValue;

  RestorableRxnNum(this.defaultValue);

  @override
  RxnNum createDefaultValue() {
    return defaultValue;
  }

  @override
  RxnNum fromPrimitives(Object? data) {
    return RxnNum(data as num?);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

class RestorableRxInt extends RestorableListenable<RxInt> {
  final RxInt defaultValue;

  RestorableRxInt(this.defaultValue);

  @override
  RxInt createDefaultValue() {
    return defaultValue;
  }

  @override
  RxInt fromPrimitives(Object? data) {
    return RxInt(data as int);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

class RestorableRxnInt extends RestorableListenable<RxnInt> {
  final RxnInt defaultValue;

  RestorableRxnInt(this.defaultValue);

  @override
  RxnInt createDefaultValue() {
    return defaultValue;
  }

  @override
  RxnInt fromPrimitives(Object? data) {
    return RxnInt(data as int?);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

class RestorableRxDouble extends RestorableListenable<RxDouble> {
  final RxDouble defaultValue;

  RestorableRxDouble(this.defaultValue);

  @override
  RxDouble createDefaultValue() {
    return defaultValue;
  }

  @override
  RxDouble fromPrimitives(Object? data) {
    return RxDouble(data as double);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

class RestorableRxnDouble extends RestorableListenable<RxnDouble> {
  final RxnDouble defaultValue;

  RestorableRxnDouble(this.defaultValue);

  @override
  RxnDouble createDefaultValue() {
    return defaultValue;
  }

  @override
  RxnDouble fromPrimitives(Object? data) {
    return RxnDouble(data as double?);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

class RestorableRxBool extends RestorableListenable<RxBool> {
  final RxBool defaultValue;

  RestorableRxBool(this.defaultValue);

  @override
  RxBool createDefaultValue() {
    return defaultValue;
  }

  @override
  RxBool fromPrimitives(Object? data) {
    return RxBool(data as bool);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

class RestorableRxnBool extends RestorableListenable<RxnBool> {
  final RxnBool defaultValue;

  RestorableRxnBool(this.defaultValue);

  @override
  RxnBool createDefaultValue() {
    return defaultValue;
  }

  @override
  RxnBool fromPrimitives(Object? data) {
    return RxnBool(data as bool?);
  }

  @override
  Object? toPrimitives() {
    return value.value;
  }
}

class RestorableRxList<T> extends RestorableListenable<RxList<T>> {
  final RxList<T> defaultValue;

  RestorableRxList(this.defaultValue);

  @override
  RxList<T> createDefaultValue() {
    return defaultValue;
  }

  @override
  RxList<T> fromPrimitives(Object? data) {
    return RxList<T>(jsonDecode(data as String) as List<T>);
  }

  @override
  Object? toPrimitives() {
    return jsonEncode(value.value);
  }
}

class RestorableRxMap<K, V> extends RestorableListenable<RxMap<K, V>> {
  final RxMap<K, V> defaultValue;

  RestorableRxMap(this.defaultValue);

  @override
  RxMap<K, V> createDefaultValue() {
    return defaultValue;
  }

  @override
  RxMap<K, V> fromPrimitives(Object? data) {
    return RxMap<K, V>.from(jsonDecode(data as String) as Map<K, V>);
  }

  @override
  Object? toPrimitives() {
    return jsonEncode(value.value);
  }
}

class RestorableRxSet<T> extends RestorableListenable<RxSet<T>> {
  final RxSet<T> defaultValue;

  RestorableRxSet(this.defaultValue);

  @override
  RxSet<T> createDefaultValue() {
    return defaultValue;
  }

  @override
  RxSet<T> fromPrimitives(Object? data) {
    return RxSet<T>(jsonDecode(data as String) as Set<T>);
  }

  @override
  Object? toPrimitives() {
    return jsonEncode(value.value);
  }
}

// Extensions

extension StringRestorableExtension on String {
  /// Returns a `RxString` with [this] `String` as initial value.
  RestorableRxString get robs => RestorableRxString(obs);
}

extension IntRestorableExtension on int {
  /// Returns a `RxInt` with [this] `int` as initial value.
  RestorableRxInt get robs => RestorableRxInt(obs);
}

extension DoubleRestorableExtension on double {
  /// Returns a `RxDouble` with [this] `double` as initial value.
  RestorableRxDouble get robs => RestorableRxDouble(obs);
}

extension BoolRestorableExtension on bool {
  /// Returns a `RxBool` with [this] `bool` as initial value.
  RxBool get robs => RxBool(this);
}

extension ListRestorableExtension<E> on List<E> {
  RestorableRxList<E> get robs => RestorableRxList<E>(obs);
}

extension SetRestorableExtension<E> on Set<E> {
  RestorableRxSet<E> get robs => RestorableRxSet<E>(obs);
}

extension MapRestorableExtension<K, V> on Map<K, V> {
  RestorableRxMap<K, V> get robs => RestorableRxMap<K, V>(obs);
}

extension RxRestorableT<T extends Object> on T {
  /// Returns a `Rx` instance with [this] `T` as initial value.
  RestorableRx<T> get robs => RestorableRx<T>(obs);
}

/// This method will replace the old `.obs` method.
/// It's a breaking change, but it is essential to avoid conflicts with
/// the new dart 3 features. T will be inferred by contextual type inference
/// rather than the extension type.
extension RxRestorableTnew on Object {
  /// Returns a `Rx` instance with [this] `T` as initial value.
  RestorableRx<T> robs<T>() => RestorableRx<T>(Rx<T>(this as T));
}