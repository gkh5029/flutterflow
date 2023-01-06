// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rev_e_x_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RevEXRecord> _$revEXRecordSerializer = new _$RevEXRecordSerializer();

class _$RevEXRecordSerializer implements StructuredSerializer<RevEXRecord> {
  @override
  final Iterable<Type> types = const [RevEXRecord, _$RevEXRecord];
  @override
  final String wireName = 'RevEXRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RevEXRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.exref;
    if (value != null) {
      result
        ..add('exref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.takeamount;
    if (value != null) {
      result
        ..add('takeamount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  RevEXRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RevEXRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'exref':
          result.exref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'takeamount':
          result.takeamount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$RevEXRecord extends RevEXRecord {
  @override
  final DocumentReference<Object?>? exref;
  @override
  final DateTime? date;
  @override
  final String? takeamount;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RevEXRecord([void Function(RevEXRecordBuilder)? updates]) =>
      (new RevEXRecordBuilder()..update(updates))._build();

  _$RevEXRecord._({this.exref, this.date, this.takeamount, this.ffRef})
      : super._();

  @override
  RevEXRecord rebuild(void Function(RevEXRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevEXRecordBuilder toBuilder() => new RevEXRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevEXRecord &&
        exref == other.exref &&
        date == other.date &&
        takeamount == other.takeamount &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, exref.hashCode), date.hashCode), takeamount.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RevEXRecord')
          ..add('exref', exref)
          ..add('date', date)
          ..add('takeamount', takeamount)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RevEXRecordBuilder implements Builder<RevEXRecord, RevEXRecordBuilder> {
  _$RevEXRecord? _$v;

  DocumentReference<Object?>? _exref;
  DocumentReference<Object?>? get exref => _$this._exref;
  set exref(DocumentReference<Object?>? exref) => _$this._exref = exref;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _takeamount;
  String? get takeamount => _$this._takeamount;
  set takeamount(String? takeamount) => _$this._takeamount = takeamount;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RevEXRecordBuilder() {
    RevEXRecord._initializeBuilder(this);
  }

  RevEXRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exref = $v.exref;
      _date = $v.date;
      _takeamount = $v.takeamount;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevEXRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RevEXRecord;
  }

  @override
  void update(void Function(RevEXRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevEXRecord build() => _build();

  _$RevEXRecord _build() {
    final _$result = _$v ??
        new _$RevEXRecord._(
            exref: exref, date: date, takeamount: takeamount, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
