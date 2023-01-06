// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apps_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppsRecord> _$appsRecordSerializer = new _$AppsRecordSerializer();

class _$AppsRecordSerializer implements StructuredSerializer<AppsRecord> {
  @override
  final Iterable<Type> types = const [AppsRecord, _$AppsRecord];
  @override
  final String wireName = 'AppsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.decs;
    if (value != null) {
      result
        ..add('decs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.thumb;
    if (value != null) {
      result
        ..add('thumb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sellerid;
    if (value != null) {
      result
        ..add('sellerid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  AppsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'decs':
          result.decs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'thumb':
          result.thumb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sellerid':
          result.sellerid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$AppsRecord extends AppsRecord {
  @override
  final String? name;
  @override
  final String? decs;
  @override
  final int? price;
  @override
  final String? thumb;
  @override
  final DocumentReference<Object?>? sellerid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AppsRecord([void Function(AppsRecordBuilder)? updates]) =>
      (new AppsRecordBuilder()..update(updates))._build();

  _$AppsRecord._(
      {this.name, this.decs, this.price, this.thumb, this.sellerid, this.ffRef})
      : super._();

  @override
  AppsRecord rebuild(void Function(AppsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppsRecordBuilder toBuilder() => new AppsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppsRecord &&
        name == other.name &&
        decs == other.decs &&
        price == other.price &&
        thumb == other.thumb &&
        sellerid == other.sellerid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, name.hashCode), decs.hashCode), price.hashCode),
                thumb.hashCode),
            sellerid.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppsRecord')
          ..add('name', name)
          ..add('decs', decs)
          ..add('price', price)
          ..add('thumb', thumb)
          ..add('sellerid', sellerid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AppsRecordBuilder implements Builder<AppsRecord, AppsRecordBuilder> {
  _$AppsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _decs;
  String? get decs => _$this._decs;
  set decs(String? decs) => _$this._decs = decs;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _thumb;
  String? get thumb => _$this._thumb;
  set thumb(String? thumb) => _$this._thumb = thumb;

  DocumentReference<Object?>? _sellerid;
  DocumentReference<Object?>? get sellerid => _$this._sellerid;
  set sellerid(DocumentReference<Object?>? sellerid) =>
      _$this._sellerid = sellerid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AppsRecordBuilder() {
    AppsRecord._initializeBuilder(this);
  }

  AppsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _decs = $v.decs;
      _price = $v.price;
      _thumb = $v.thumb;
      _sellerid = $v.sellerid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppsRecord;
  }

  @override
  void update(void Function(AppsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppsRecord build() => _build();

  _$AppsRecord _build() {
    final _$result = _$v ??
        new _$AppsRecord._(
            name: name,
            decs: decs,
            price: price,
            thumb: thumb,
            sellerid: sellerid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
