// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchases_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PurchasesRecord> _$purchasesRecordSerializer =
    new _$PurchasesRecordSerializer();

class _$PurchasesRecordSerializer
    implements StructuredSerializer<PurchasesRecord> {
  @override
  final Iterable<Type> types = const [PurchasesRecord, _$PurchasesRecord];
  @override
  final String wireName = 'PurchasesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PurchasesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.appid;
    if (value != null) {
      result
        ..add('appid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ts;
    if (value != null) {
      result
        ..add('ts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PurchasesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PurchasesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'appid':
          result.appid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ts':
          result.ts = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PurchasesRecord extends PurchasesRecord {
  @override
  final DocumentReference<Object?>? appid;
  @override
  final double? price;
  @override
  final DateTime? ts;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PurchasesRecord([void Function(PurchasesRecordBuilder)? updates]) =>
      (new PurchasesRecordBuilder()..update(updates))._build();

  _$PurchasesRecord._({this.appid, this.price, this.ts, this.ffRef})
      : super._();

  @override
  PurchasesRecord rebuild(void Function(PurchasesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchasesRecordBuilder toBuilder() =>
      new PurchasesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchasesRecord &&
        appid == other.appid &&
        price == other.price &&
        ts == other.ts &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, appid.hashCode), price.hashCode), ts.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PurchasesRecord')
          ..add('appid', appid)
          ..add('price', price)
          ..add('ts', ts)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PurchasesRecordBuilder
    implements Builder<PurchasesRecord, PurchasesRecordBuilder> {
  _$PurchasesRecord? _$v;

  DocumentReference<Object?>? _appid;
  DocumentReference<Object?>? get appid => _$this._appid;
  set appid(DocumentReference<Object?>? appid) => _$this._appid = appid;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DateTime? _ts;
  DateTime? get ts => _$this._ts;
  set ts(DateTime? ts) => _$this._ts = ts;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PurchasesRecordBuilder() {
    PurchasesRecord._initializeBuilder(this);
  }

  PurchasesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appid = $v.appid;
      _price = $v.price;
      _ts = $v.ts;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchasesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PurchasesRecord;
  }

  @override
  void update(void Function(PurchasesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurchasesRecord build() => _build();

  _$PurchasesRecord _build() {
    final _$result = _$v ??
        new _$PurchasesRecord._(
            appid: appid, price: price, ts: ts, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
