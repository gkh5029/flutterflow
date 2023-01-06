import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'apps_record.g.dart';

abstract class AppsRecord implements Built<AppsRecord, AppsRecordBuilder> {
  static Serializer<AppsRecord> get serializer => _$appsRecordSerializer;

  String? get name;

  String? get decs;

  int? get price;

  String? get thumb;

  DocumentReference? get sellerid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AppsRecordBuilder builder) => builder
    ..name = ''
    ..decs = ''
    ..price = 0
    ..thumb = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('apps');

  static Stream<AppsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AppsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AppsRecord._();
  factory AppsRecord([void Function(AppsRecordBuilder) updates]) = _$AppsRecord;

  static AppsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAppsRecordData({
  String? name,
  String? decs,
  int? price,
  String? thumb,
  DocumentReference? sellerid,
}) {
  final firestoreData = serializers.toFirestore(
    AppsRecord.serializer,
    AppsRecord(
      (a) => a
        ..name = name
        ..decs = decs
        ..price = price
        ..thumb = thumb
        ..sellerid = sellerid,
    ),
  );

  return firestoreData;
}
