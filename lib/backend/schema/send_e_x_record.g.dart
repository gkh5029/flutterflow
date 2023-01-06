// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_e_x_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SendEXRecord> _$sendEXRecordSerializer =
    new _$SendEXRecordSerializer();

class _$SendEXRecordSerializer implements StructuredSerializer<SendEXRecord> {
  @override
  final Iterable<Type> types = const [SendEXRecord, _$SendEXRecord];
  @override
  final String wireName = 'SendEXRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SendEXRecord object,
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
  SendEXRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SendEXRecordBuilder();

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

class _$SendEXRecord extends SendEXRecord {
  @override
  final DocumentReference<Object?>? exref;
  @override
  final DateTime? date;
  @override
  final String? takeamount;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SendEXRecord([void Function(SendEXRecordBuilder)? updates]) =>
      (new SendEXRecordBuilder()..update(updates))._build();

  _$SendEXRecord._({this.exref, this.date, this.takeamount, this.ffRef})
      : super._();

  @override
  SendEXRecord rebuild(void Function(SendEXRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendEXRecordBuilder toBuilder() => new SendEXRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendEXRecord &&
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
    return (newBuiltValueToStringHelper(r'SendEXRecord')
          ..add('exref', exref)
          ..add('date', date)
          ..add('takeamount', takeamount)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SendEXRecordBuilder
    implements Builder<SendEXRecord, SendEXRecordBuilder> {
  _$SendEXRecord? _$v;

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

  SendEXRecordBuilder() {
    SendEXRecord._initializeBuilder(this);
  }

  SendEXRecordBuilder get _$this {
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
  void replace(SendEXRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendEXRecord;
  }

  @override
  void update(void Function(SendEXRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendEXRecord build() => _build();

  _$SendEXRecord _build() {
    final _$result = _$v ??
        new _$SendEXRecord._(
            exref: exref, date: date, takeamount: takeamount, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
