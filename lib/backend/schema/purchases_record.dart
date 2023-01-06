import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'purchases_record.g.dart';

abstract class PurchasesRecord
    implements Built<PurchasesRecord, PurchasesRecordBuilder> {
  static Serializer<PurchasesRecord> get serializer =>
      _$purchasesRecordSerializer;

  DocumentReference? get appid;

  double? get price;

  DateTime? get ts;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PurchasesRecordBuilder builder) =>
      builder..price = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('purchases')
          : FirebaseFirestore.instance.collectionGroup('purchases');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('purchases').doc();

  static Stream<PurchasesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PurchasesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PurchasesRecord._();
  factory PurchasesRecord([void Function(PurchasesRecordBuilder) updates]) =
      _$PurchasesRecord;

  static PurchasesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPurchasesRecordData({
  DocumentReference? appid,
  double? price,
  DateTime? ts,
}) {
  final firestoreData = serializers.toFirestore(
    PurchasesRecord.serializer,
    PurchasesRecord(
      (p) => p
        ..appid = appid
        ..price = price
        ..ts = ts,
    ),
  );

  return firestoreData;
}
