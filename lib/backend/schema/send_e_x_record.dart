import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'send_e_x_record.g.dart';

abstract class SendEXRecord
    implements Built<SendEXRecord, SendEXRecordBuilder> {
  static Serializer<SendEXRecord> get serializer => _$sendEXRecordSerializer;

  DocumentReference? get exref;

  DateTime? get date;

  String? get takeamount;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SendEXRecordBuilder builder) =>
      builder..takeamount = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('SendEX')
          : FirebaseFirestore.instance.collectionGroup('SendEX');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('SendEX').doc();

  static Stream<SendEXRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SendEXRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SendEXRecord._();
  factory SendEXRecord([void Function(SendEXRecordBuilder) updates]) =
      _$SendEXRecord;

  static SendEXRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSendEXRecordData({
  DocumentReference? exref,
  DateTime? date,
  String? takeamount,
}) {
  final firestoreData = serializers.toFirestore(
    SendEXRecord.serializer,
    SendEXRecord(
      (s) => s
        ..exref = exref
        ..date = date
        ..takeamount = takeamount,
    ),
  );

  return firestoreData;
}
