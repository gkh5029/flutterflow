import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rev_e_x_record.g.dart';

abstract class RevEXRecord implements Built<RevEXRecord, RevEXRecordBuilder> {
  static Serializer<RevEXRecord> get serializer => _$revEXRecordSerializer;

  DocumentReference? get exref;

  DateTime? get date;

  String? get takeamount;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(RevEXRecordBuilder builder) =>
      builder..takeamount = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('RevEX')
          : FirebaseFirestore.instance.collectionGroup('RevEX');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('RevEX').doc();

  static Stream<RevEXRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RevEXRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RevEXRecord._();
  factory RevEXRecord([void Function(RevEXRecordBuilder) updates]) =
      _$RevEXRecord;

  static RevEXRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRevEXRecordData({
  DocumentReference? exref,
  DateTime? date,
  String? takeamount,
}) {
  final firestoreData = serializers.toFirestore(
    RevEXRecord.serializer,
    RevEXRecord(
      (r) => r
        ..exref = exref
        ..date = date
        ..takeamount = takeamount,
    ),
  );

  return firestoreData;
}
