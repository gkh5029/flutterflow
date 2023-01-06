// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ex_trade_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExTradeRecord> _$exTradeRecordSerializer =
    new _$ExTradeRecordSerializer();

class _$ExTradeRecordSerializer implements StructuredSerializer<ExTradeRecord> {
  @override
  final Iterable<Type> types = const [ExTradeRecord, _$ExTradeRecord];
  @override
  final String wireName = 'ExTradeRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ExTradeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.item;
    if (value != null) {
      result
        ..add('item')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.des;
    if (value != null) {
      result
        ..add('des')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.csl;
    if (value != null) {
      result
        ..add('csl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cslimit;
    if (value != null) {
      result
        ..add('cslimit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.csusage;
    if (value != null) {
      result
        ..add('csusage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  ExTradeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExTradeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'item':
          result.item = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'des':
          result.des = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'csl':
          result.csl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'cslimit':
          result.cslimit = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'csusage':
          result.csusage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$ExTradeRecord extends ExTradeRecord {
  @override
  final String? item;
  @override
  final String? des;
  @override
  final String? currency;
  @override
  final double? amount;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? userid;
  @override
  final String? csl;
  @override
  final String? status;
  @override
  final DateTime? date;
  @override
  final double? cslimit;
  @override
  final double? csusage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ExTradeRecord([void Function(ExTradeRecordBuilder)? updates]) =>
      (new ExTradeRecordBuilder()..update(updates))._build();

  _$ExTradeRecord._(
      {this.item,
      this.des,
      this.currency,
      this.amount,
      this.image,
      this.userid,
      this.csl,
      this.status,
      this.date,
      this.cslimit,
      this.csusage,
      this.ffRef})
      : super._();

  @override
  ExTradeRecord rebuild(void Function(ExTradeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExTradeRecordBuilder toBuilder() => new ExTradeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExTradeRecord &&
        item == other.item &&
        des == other.des &&
        currency == other.currency &&
        amount == other.amount &&
        image == other.image &&
        userid == other.userid &&
        csl == other.csl &&
        status == other.status &&
        date == other.date &&
        cslimit == other.cslimit &&
        csusage == other.csusage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, item.hashCode),
                                                des.hashCode),
                                            currency.hashCode),
                                        amount.hashCode),
                                    image.hashCode),
                                userid.hashCode),
                            csl.hashCode),
                        status.hashCode),
                    date.hashCode),
                cslimit.hashCode),
            csusage.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExTradeRecord')
          ..add('item', item)
          ..add('des', des)
          ..add('currency', currency)
          ..add('amount', amount)
          ..add('image', image)
          ..add('userid', userid)
          ..add('csl', csl)
          ..add('status', status)
          ..add('date', date)
          ..add('cslimit', cslimit)
          ..add('csusage', csusage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ExTradeRecordBuilder
    implements Builder<ExTradeRecord, ExTradeRecordBuilder> {
  _$ExTradeRecord? _$v;

  String? _item;
  String? get item => _$this._item;
  set item(String? item) => _$this._item = item;

  String? _des;
  String? get des => _$this._des;
  set des(String? des) => _$this._des = des;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _userid;
  DocumentReference<Object?>? get userid => _$this._userid;
  set userid(DocumentReference<Object?>? userid) => _$this._userid = userid;

  String? _csl;
  String? get csl => _$this._csl;
  set csl(String? csl) => _$this._csl = csl;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  double? _cslimit;
  double? get cslimit => _$this._cslimit;
  set cslimit(double? cslimit) => _$this._cslimit = cslimit;

  double? _csusage;
  double? get csusage => _$this._csusage;
  set csusage(double? csusage) => _$this._csusage = csusage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ExTradeRecordBuilder() {
    ExTradeRecord._initializeBuilder(this);
  }

  ExTradeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item;
      _des = $v.des;
      _currency = $v.currency;
      _amount = $v.amount;
      _image = $v.image;
      _userid = $v.userid;
      _csl = $v.csl;
      _status = $v.status;
      _date = $v.date;
      _cslimit = $v.cslimit;
      _csusage = $v.csusage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExTradeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExTradeRecord;
  }

  @override
  void update(void Function(ExTradeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExTradeRecord build() => _build();

  _$ExTradeRecord _build() {
    final _$result = _$v ??
        new _$ExTradeRecord._(
            item: item,
            des: des,
            currency: currency,
            amount: amount,
            image: image,
            userid: userid,
            csl: csl,
            status: status,
            date: date,
            cslimit: cslimit,
            csusage: csusage,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
