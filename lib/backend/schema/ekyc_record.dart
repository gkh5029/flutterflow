import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ekyc_record.g.dart';

abstract class EkycRecord implements Built<EkycRecord, EkycRecordBuilder> {
  static Serializer<EkycRecord> get serializer => _$ekycRecordSerializer;

  String? get passport;

  String? get schoolname;

  @BuiltValueField(wireName: 'JiekoulLink')
  String? get jiekoulLink;

  @BuiltValueField(wireName: 'TnGLink')
  String? get tnGLink;

  String? get selfie;

  DocumentReference? get userref;

  String? get arcA;

  String? get arcB;

  bool? get status;

  bool? get verify;

  String? get staytaiwanreson;

  @BuiltValueField(wireName: 'STMprove')
  String? get sTMprove;

  String? get othersupportingdoc;

  String? get rejectcolor;

  @BuiltValueField(wireName: 'RejectReson')
  String? get rejectReson;

  @BuiltValueField(wireName: 'PassportVRF')
  String? get passportVRF;

  @BuiltValueField(wireName: 'ArcVRF')
  String? get arcVRF;

  @BuiltValueField(wireName: 'KycVRF')
  String? get kycVRF;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(EkycRecordBuilder builder) => builder
    ..passport = ''
    ..schoolname = ''
    ..jiekoulLink = ''
    ..tnGLink = ''
    ..selfie = ''
    ..arcA = ''
    ..arcB = ''
    ..status = false
    ..verify = false
    ..staytaiwanreson = ''
    ..sTMprove = ''
    ..othersupportingdoc = ''
    ..rejectcolor = ''
    ..rejectReson = ''
    ..passportVRF = ''
    ..arcVRF = ''
    ..kycVRF = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ekyc')
          : FirebaseFirestore.instance.collectionGroup('ekyc');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('ekyc').doc();

  static Stream<EkycRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EkycRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EkycRecord._();
  factory EkycRecord([void Function(EkycRecordBuilder) updates]) = _$EkycRecord;

  static EkycRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEkycRecordData({
  String? passport,
  String? schoolname,
  String? jiekoulLink,
  String? tnGLink,
  String? selfie,
  DocumentReference? userref,
  String? arcA,
  String? arcB,
  bool? status,
  bool? verify,
  String? staytaiwanreson,
  String? sTMprove,
  String? othersupportingdoc,
  String? rejectcolor,
  String? rejectReson,
  String? passportVRF,
  String? arcVRF,
  String? kycVRF,
}) {
  final firestoreData = serializers.toFirestore(
    EkycRecord.serializer,
    EkycRecord(
      (e) => e
        ..passport = passport
        ..schoolname = schoolname
        ..jiekoulLink = jiekoulLink
        ..tnGLink = tnGLink
        ..selfie = selfie
        ..userref = userref
        ..arcA = arcA
        ..arcB = arcB
        ..status = status
        ..verify = verify
        ..staytaiwanreson = staytaiwanreson
        ..sTMprove = sTMprove
        ..othersupportingdoc = othersupportingdoc
        ..rejectcolor = rejectcolor
        ..rejectReson = rejectReson
        ..passportVRF = passportVRF
        ..arcVRF = arcVRF
        ..kycVRF = kycVRF,
    ),
  );

  return firestoreData;
}
