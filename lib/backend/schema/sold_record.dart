import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sold_record.g.dart';

abstract class SoldRecord implements Built<SoldRecord, SoldRecordBuilder> {
  static Serializer<SoldRecord> get serializer => _$soldRecordSerializer;

  DocumentReference? get appid;

  double? get price;

  DateTime? get ts;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SoldRecordBuilder builder) =>
      builder..price = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('sold')
          : FirebaseFirestore.instance.collectionGroup('sold');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('sold').doc();

  static Stream<SoldRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SoldRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SoldRecord._();
  factory SoldRecord([void Function(SoldRecordBuilder) updates]) = _$SoldRecord;

  static SoldRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSoldRecordData({
  DocumentReference? appid,
  double? price,
  DateTime? ts,
}) {
  final firestoreData = serializers.toFirestore(
    SoldRecord.serializer,
    SoldRecord(
      (s) => s
        ..appid = appid
        ..price = price
        ..ts = ts,
    ),
  );

  return firestoreData;
}
