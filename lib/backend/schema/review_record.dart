import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'review_record.g.dart';

abstract class ReviewRecord
    implements Built<ReviewRecord, ReviewRecordBuilder> {
  static Serializer<ReviewRecord> get serializer => _$reviewRecordSerializer;

  int? get rating;

  String? get review;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ReviewRecordBuilder builder) => builder
    ..rating = 0
    ..review = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('review')
          : FirebaseFirestore.instance.collectionGroup('review');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('review').doc();

  static Stream<ReviewRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReviewRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReviewRecord._();
  factory ReviewRecord([void Function(ReviewRecordBuilder) updates]) =
      _$ReviewRecord;

  static ReviewRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReviewRecordData({
  int? rating,
  String? review,
}) {
  final firestoreData = serializers.toFirestore(
    ReviewRecord.serializer,
    ReviewRecord(
      (r) => r
        ..rating = rating
        ..review = review,
    ),
  );

  return firestoreData;
}
