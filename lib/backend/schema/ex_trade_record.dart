import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ex_trade_record.g.dart';

abstract class ExTradeRecord
    implements Built<ExTradeRecord, ExTradeRecordBuilder> {
  static Serializer<ExTradeRecord> get serializer => _$exTradeRecordSerializer;

  String? get item;

  String? get des;

  String? get currency;

  double? get amount;

  String? get image;

  DocumentReference? get userid;

  String? get csl;

  String? get status;

  DateTime? get date;

  double? get cslimit;

  double? get csusage;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ExTradeRecordBuilder builder) => builder
    ..item = ''
    ..des = ''
    ..currency = ''
    ..amount = 0.0
    ..image = ''
    ..csl = ''
    ..status = ''
    ..cslimit = 0.0
    ..csusage = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ExTrade');

  static Stream<ExTradeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ExTradeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ExTradeRecord._();
  factory ExTradeRecord([void Function(ExTradeRecordBuilder) updates]) =
      _$ExTradeRecord;

  static ExTradeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createExTradeRecordData({
  String? item,
  String? des,
  String? currency,
  double? amount,
  String? image,
  DocumentReference? userid,
  String? csl,
  String? status,
  DateTime? date,
  double? cslimit,
  double? csusage,
}) {
  final firestoreData = serializers.toFirestore(
    ExTradeRecord.serializer,
    ExTradeRecord(
      (e) => e
        ..item = item
        ..des = des
        ..currency = currency
        ..amount = amount
        ..image = image
        ..userid = userid
        ..csl = csl
        ..status = status
        ..date = date
        ..cslimit = cslimit
        ..csusage = csusage,
    ),
  );

  return firestoreData;
}
