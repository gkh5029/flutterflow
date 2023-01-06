// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReviewRecord> _$reviewRecordSerializer =
    new _$ReviewRecordSerializer();

class _$ReviewRecordSerializer implements StructuredSerializer<ReviewRecord> {
  @override
  final Iterable<Type> types = const [ReviewRecord, _$ReviewRecord];
  @override
  final String wireName = 'ReviewRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReviewRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.review;
    if (value != null) {
      result
        ..add('review')
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
  ReviewRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'review':
          result.review = serializers.deserialize(value,
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

class _$ReviewRecord extends ReviewRecord {
  @override
  final int? rating;
  @override
  final String? review;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReviewRecord([void Function(ReviewRecordBuilder)? updates]) =>
      (new ReviewRecordBuilder()..update(updates))._build();

  _$ReviewRecord._({this.rating, this.review, this.ffRef}) : super._();

  @override
  ReviewRecord rebuild(void Function(ReviewRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewRecordBuilder toBuilder() => new ReviewRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewRecord &&
        rating == other.rating &&
        review == other.review &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, rating.hashCode), review.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewRecord')
          ..add('rating', rating)
          ..add('review', review)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReviewRecordBuilder
    implements Builder<ReviewRecord, ReviewRecordBuilder> {
  _$ReviewRecord? _$v;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  String? _review;
  String? get review => _$this._review;
  set review(String? review) => _$this._review = review;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReviewRecordBuilder() {
    ReviewRecord._initializeBuilder(this);
  }

  ReviewRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rating = $v.rating;
      _review = $v.review;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewRecord;
  }

  @override
  void update(void Function(ReviewRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewRecord build() => _build();

  _$ReviewRecord _build() {
    final _$result = _$v ??
        new _$ReviewRecord._(rating: rating, review: review, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
