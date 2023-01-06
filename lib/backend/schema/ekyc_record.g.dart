// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ekyc_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EkycRecord> _$ekycRecordSerializer = new _$EkycRecordSerializer();

class _$EkycRecordSerializer implements StructuredSerializer<EkycRecord> {
  @override
  final Iterable<Type> types = const [EkycRecord, _$EkycRecord];
  @override
  final String wireName = 'EkycRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EkycRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.passport;
    if (value != null) {
      result
        ..add('passport')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.schoolname;
    if (value != null) {
      result
        ..add('schoolname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.jiekoulLink;
    if (value != null) {
      result
        ..add('JiekoulLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tnGLink;
    if (value != null) {
      result
        ..add('TnGLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.selfie;
    if (value != null) {
      result
        ..add('selfie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userref;
    if (value != null) {
      result
        ..add('userref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.arcA;
    if (value != null) {
      result
        ..add('arcA')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.arcB;
    if (value != null) {
      result
        ..add('arcB')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.verify;
    if (value != null) {
      result
        ..add('verify')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.staytaiwanreson;
    if (value != null) {
      result
        ..add('staytaiwanreson')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sTMprove;
    if (value != null) {
      result
        ..add('STMprove')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.othersupportingdoc;
    if (value != null) {
      result
        ..add('othersupportingdoc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rejectcolor;
    if (value != null) {
      result
        ..add('rejectcolor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rejectReson;
    if (value != null) {
      result
        ..add('RejectReson')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.passportVRF;
    if (value != null) {
      result
        ..add('PassportVRF')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.arcVRF;
    if (value != null) {
      result
        ..add('ArcVRF')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.kycVRF;
    if (value != null) {
      result
        ..add('KycVRF')
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
  EkycRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EkycRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'passport':
          result.passport = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'schoolname':
          result.schoolname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'JiekoulLink':
          result.jiekoulLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TnGLink':
          result.tnGLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'selfie':
          result.selfie = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userref':
          result.userref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'arcA':
          result.arcA = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'arcB':
          result.arcB = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'verify':
          result.verify = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'staytaiwanreson':
          result.staytaiwanreson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'STMprove':
          result.sTMprove = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'othersupportingdoc':
          result.othersupportingdoc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rejectcolor':
          result.rejectcolor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'RejectReson':
          result.rejectReson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PassportVRF':
          result.passportVRF = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ArcVRF':
          result.arcVRF = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'KycVRF':
          result.kycVRF = serializers.deserialize(value,
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

class _$EkycRecord extends EkycRecord {
  @override
  final String? passport;
  @override
  final String? schoolname;
  @override
  final String? jiekoulLink;
  @override
  final String? tnGLink;
  @override
  final String? selfie;
  @override
  final DocumentReference<Object?>? userref;
  @override
  final String? arcA;
  @override
  final String? arcB;
  @override
  final bool? status;
  @override
  final bool? verify;
  @override
  final String? staytaiwanreson;
  @override
  final String? sTMprove;
  @override
  final String? othersupportingdoc;
  @override
  final String? rejectcolor;
  @override
  final String? rejectReson;
  @override
  final String? passportVRF;
  @override
  final String? arcVRF;
  @override
  final String? kycVRF;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EkycRecord([void Function(EkycRecordBuilder)? updates]) =>
      (new EkycRecordBuilder()..update(updates))._build();

  _$EkycRecord._(
      {this.passport,
      this.schoolname,
      this.jiekoulLink,
      this.tnGLink,
      this.selfie,
      this.userref,
      this.arcA,
      this.arcB,
      this.status,
      this.verify,
      this.staytaiwanreson,
      this.sTMprove,
      this.othersupportingdoc,
      this.rejectcolor,
      this.rejectReson,
      this.passportVRF,
      this.arcVRF,
      this.kycVRF,
      this.ffRef})
      : super._();

  @override
  EkycRecord rebuild(void Function(EkycRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EkycRecordBuilder toBuilder() => new EkycRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EkycRecord &&
        passport == other.passport &&
        schoolname == other.schoolname &&
        jiekoulLink == other.jiekoulLink &&
        tnGLink == other.tnGLink &&
        selfie == other.selfie &&
        userref == other.userref &&
        arcA == other.arcA &&
        arcB == other.arcB &&
        status == other.status &&
        verify == other.verify &&
        staytaiwanreson == other.staytaiwanreson &&
        sTMprove == other.sTMprove &&
        othersupportingdoc == other.othersupportingdoc &&
        rejectcolor == other.rejectcolor &&
        rejectReson == other.rejectReson &&
        passportVRF == other.passportVRF &&
        arcVRF == other.arcVRF &&
        kycVRF == other.kycVRF &&
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                passport
                                                                                    .hashCode),
                                                                            schoolname
                                                                                .hashCode),
                                                                        jiekoulLink
                                                                            .hashCode),
                                                                    tnGLink
                                                                        .hashCode),
                                                                selfie
                                                                    .hashCode),
                                                            userref.hashCode),
                                                        arcA.hashCode),
                                                    arcB.hashCode),
                                                status.hashCode),
                                            verify.hashCode),
                                        staytaiwanreson.hashCode),
                                    sTMprove.hashCode),
                                othersupportingdoc.hashCode),
                            rejectcolor.hashCode),
                        rejectReson.hashCode),
                    passportVRF.hashCode),
                arcVRF.hashCode),
            kycVRF.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EkycRecord')
          ..add('passport', passport)
          ..add('schoolname', schoolname)
          ..add('jiekoulLink', jiekoulLink)
          ..add('tnGLink', tnGLink)
          ..add('selfie', selfie)
          ..add('userref', userref)
          ..add('arcA', arcA)
          ..add('arcB', arcB)
          ..add('status', status)
          ..add('verify', verify)
          ..add('staytaiwanreson', staytaiwanreson)
          ..add('sTMprove', sTMprove)
          ..add('othersupportingdoc', othersupportingdoc)
          ..add('rejectcolor', rejectcolor)
          ..add('rejectReson', rejectReson)
          ..add('passportVRF', passportVRF)
          ..add('arcVRF', arcVRF)
          ..add('kycVRF', kycVRF)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EkycRecordBuilder implements Builder<EkycRecord, EkycRecordBuilder> {
  _$EkycRecord? _$v;

  String? _passport;
  String? get passport => _$this._passport;
  set passport(String? passport) => _$this._passport = passport;

  String? _schoolname;
  String? get schoolname => _$this._schoolname;
  set schoolname(String? schoolname) => _$this._schoolname = schoolname;

  String? _jiekoulLink;
  String? get jiekoulLink => _$this._jiekoulLink;
  set jiekoulLink(String? jiekoulLink) => _$this._jiekoulLink = jiekoulLink;

  String? _tnGLink;
  String? get tnGLink => _$this._tnGLink;
  set tnGLink(String? tnGLink) => _$this._tnGLink = tnGLink;

  String? _selfie;
  String? get selfie => _$this._selfie;
  set selfie(String? selfie) => _$this._selfie = selfie;

  DocumentReference<Object?>? _userref;
  DocumentReference<Object?>? get userref => _$this._userref;
  set userref(DocumentReference<Object?>? userref) => _$this._userref = userref;

  String? _arcA;
  String? get arcA => _$this._arcA;
  set arcA(String? arcA) => _$this._arcA = arcA;

  String? _arcB;
  String? get arcB => _$this._arcB;
  set arcB(String? arcB) => _$this._arcB = arcB;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  bool? _verify;
  bool? get verify => _$this._verify;
  set verify(bool? verify) => _$this._verify = verify;

  String? _staytaiwanreson;
  String? get staytaiwanreson => _$this._staytaiwanreson;
  set staytaiwanreson(String? staytaiwanreson) =>
      _$this._staytaiwanreson = staytaiwanreson;

  String? _sTMprove;
  String? get sTMprove => _$this._sTMprove;
  set sTMprove(String? sTMprove) => _$this._sTMprove = sTMprove;

  String? _othersupportingdoc;
  String? get othersupportingdoc => _$this._othersupportingdoc;
  set othersupportingdoc(String? othersupportingdoc) =>
      _$this._othersupportingdoc = othersupportingdoc;

  String? _rejectcolor;
  String? get rejectcolor => _$this._rejectcolor;
  set rejectcolor(String? rejectcolor) => _$this._rejectcolor = rejectcolor;

  String? _rejectReson;
  String? get rejectReson => _$this._rejectReson;
  set rejectReson(String? rejectReson) => _$this._rejectReson = rejectReson;

  String? _passportVRF;
  String? get passportVRF => _$this._passportVRF;
  set passportVRF(String? passportVRF) => _$this._passportVRF = passportVRF;

  String? _arcVRF;
  String? get arcVRF => _$this._arcVRF;
  set arcVRF(String? arcVRF) => _$this._arcVRF = arcVRF;

  String? _kycVRF;
  String? get kycVRF => _$this._kycVRF;
  set kycVRF(String? kycVRF) => _$this._kycVRF = kycVRF;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EkycRecordBuilder() {
    EkycRecord._initializeBuilder(this);
  }

  EkycRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passport = $v.passport;
      _schoolname = $v.schoolname;
      _jiekoulLink = $v.jiekoulLink;
      _tnGLink = $v.tnGLink;
      _selfie = $v.selfie;
      _userref = $v.userref;
      _arcA = $v.arcA;
      _arcB = $v.arcB;
      _status = $v.status;
      _verify = $v.verify;
      _staytaiwanreson = $v.staytaiwanreson;
      _sTMprove = $v.sTMprove;
      _othersupportingdoc = $v.othersupportingdoc;
      _rejectcolor = $v.rejectcolor;
      _rejectReson = $v.rejectReson;
      _passportVRF = $v.passportVRF;
      _arcVRF = $v.arcVRF;
      _kycVRF = $v.kycVRF;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EkycRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EkycRecord;
  }

  @override
  void update(void Function(EkycRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EkycRecord build() => _build();

  _$EkycRecord _build() {
    final _$result = _$v ??
        new _$EkycRecord._(
            passport: passport,
            schoolname: schoolname,
            jiekoulLink: jiekoulLink,
            tnGLink: tnGLink,
            selfie: selfie,
            userref: userref,
            arcA: arcA,
            arcB: arcB,
            status: status,
            verify: verify,
            staytaiwanreson: staytaiwanreson,
            sTMprove: sTMprove,
            othersupportingdoc: othersupportingdoc,
            rejectcolor: rejectcolor,
            rejectReson: rejectReson,
            passportVRF: passportVRF,
            arcVRF: arcVRF,
            kycVRF: kycVRF,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
