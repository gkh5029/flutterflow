// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mid;
    if (value != null) {
      result
        ..add('mid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.csr;
    if (value != null) {
      result
        ..add('csr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.carrypoin;
    if (value != null) {
      result
        ..add('carrypoin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.carryexlimitMY;
    if (value != null) {
      result
        ..add('carryexlimitMY')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.passport;
    if (value != null) {
      result
        ..add('passport')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.arcid;
    if (value != null) {
      result
        ..add('arcid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.kycpass;
    if (value != null) {
      result
        ..add('kycpass')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.amlpass;
    if (value != null) {
      result
        ..add('amlpass')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userbarcode;
    if (value != null) {
      result
        ..add('userbarcode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.invitfrendpass;
    if (value != null) {
      result
        ..add('invitfrendpass')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mid':
          result.mid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'csr':
          result.csr = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'carrypoin':
          result.carrypoin = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'carryexlimitMY':
          result.carryexlimitMY = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'passport':
          result.passport = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'arcid':
          result.arcid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'kycpass':
          result.kycpass = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'amlpass':
          result.amlpass = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'userbarcode':
          result.userbarcode = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'invitfrendpass':
          result.invitfrendpass = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? mid;
  @override
  final double? csr;
  @override
  final double? carrypoin;
  @override
  final double? carryexlimitMY;
  @override
  final String? passport;
  @override
  final String? arcid;
  @override
  final String? gender;
  @override
  final bool? kycpass;
  @override
  final bool? amlpass;
  @override
  final double? userbarcode;
  @override
  final bool? invitfrendpass;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.mid,
      this.csr,
      this.carrypoin,
      this.carryexlimitMY,
      this.passport,
      this.arcid,
      this.gender,
      this.kycpass,
      this.amlpass,
      this.userbarcode,
      this.invitfrendpass,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        mid == other.mid &&
        csr == other.csr &&
        carrypoin == other.carrypoin &&
        carryexlimitMY == other.carryexlimitMY &&
        passport == other.passport &&
        arcid == other.arcid &&
        gender == other.gender &&
        kycpass == other.kycpass &&
        amlpass == other.amlpass &&
        userbarcode == other.userbarcode &&
        invitfrendpass == other.invitfrendpass &&
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
                                                                            0,
                                                                            email
                                                                                .hashCode),
                                                                        displayName
                                                                            .hashCode),
                                                                    photoUrl
                                                                        .hashCode),
                                                                uid.hashCode),
                                                            createdTime
                                                                .hashCode),
                                                        phoneNumber.hashCode),
                                                    mid.hashCode),
                                                csr.hashCode),
                                            carrypoin.hashCode),
                                        carryexlimitMY.hashCode),
                                    passport.hashCode),
                                arcid.hashCode),
                            gender.hashCode),
                        kycpass.hashCode),
                    amlpass.hashCode),
                userbarcode.hashCode),
            invitfrendpass.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('mid', mid)
          ..add('csr', csr)
          ..add('carrypoin', carrypoin)
          ..add('carryexlimitMY', carryexlimitMY)
          ..add('passport', passport)
          ..add('arcid', arcid)
          ..add('gender', gender)
          ..add('kycpass', kycpass)
          ..add('amlpass', amlpass)
          ..add('userbarcode', userbarcode)
          ..add('invitfrendpass', invitfrendpass)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _mid;
  String? get mid => _$this._mid;
  set mid(String? mid) => _$this._mid = mid;

  double? _csr;
  double? get csr => _$this._csr;
  set csr(double? csr) => _$this._csr = csr;

  double? _carrypoin;
  double? get carrypoin => _$this._carrypoin;
  set carrypoin(double? carrypoin) => _$this._carrypoin = carrypoin;

  double? _carryexlimitMY;
  double? get carryexlimitMY => _$this._carryexlimitMY;
  set carryexlimitMY(double? carryexlimitMY) =>
      _$this._carryexlimitMY = carryexlimitMY;

  String? _passport;
  String? get passport => _$this._passport;
  set passport(String? passport) => _$this._passport = passport;

  String? _arcid;
  String? get arcid => _$this._arcid;
  set arcid(String? arcid) => _$this._arcid = arcid;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  bool? _kycpass;
  bool? get kycpass => _$this._kycpass;
  set kycpass(bool? kycpass) => _$this._kycpass = kycpass;

  bool? _amlpass;
  bool? get amlpass => _$this._amlpass;
  set amlpass(bool? amlpass) => _$this._amlpass = amlpass;

  double? _userbarcode;
  double? get userbarcode => _$this._userbarcode;
  set userbarcode(double? userbarcode) => _$this._userbarcode = userbarcode;

  bool? _invitfrendpass;
  bool? get invitfrendpass => _$this._invitfrendpass;
  set invitfrendpass(bool? invitfrendpass) =>
      _$this._invitfrendpass = invitfrendpass;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _mid = $v.mid;
      _csr = $v.csr;
      _carrypoin = $v.carrypoin;
      _carryexlimitMY = $v.carryexlimitMY;
      _passport = $v.passport;
      _arcid = $v.arcid;
      _gender = $v.gender;
      _kycpass = $v.kycpass;
      _amlpass = $v.amlpass;
      _userbarcode = $v.userbarcode;
      _invitfrendpass = $v.invitfrendpass;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            mid: mid,
            csr: csr,
            carrypoin: carrypoin,
            carryexlimitMY: carryexlimitMY,
            passport: passport,
            arcid: arcid,
            gender: gender,
            kycpass: kycpass,
            amlpass: amlpass,
            userbarcode: userbarcode,
            invitfrendpass: invitfrendpass,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
