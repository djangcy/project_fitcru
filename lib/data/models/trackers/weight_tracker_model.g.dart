// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_tracker_model.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class WeightTrackerModelCollectionReference
    implements
        WeightTrackerModelQuery,
        FirestoreCollectionReference<WeightTrackerModel,
            WeightTrackerModelQuerySnapshot> {
  factory WeightTrackerModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$WeightTrackerModelCollectionReference;

  static WeightTrackerModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return WeightTrackerModel.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    WeightTrackerModel value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<WeightTrackerModel> get reference;

  @override
  WeightTrackerModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<WeightTrackerModelDocumentReference> add(WeightTrackerModel value);
}

class _$WeightTrackerModelCollectionReference extends _$WeightTrackerModelQuery
    implements WeightTrackerModelCollectionReference {
  factory _$WeightTrackerModelCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$WeightTrackerModelCollectionReference._(
      firestore.collection('weight_trackers').withConverter(
            fromFirestore: WeightTrackerModelCollectionReference.fromFirestore,
            toFirestore: WeightTrackerModelCollectionReference.toFirestore,
          ),
    );
  }

  _$WeightTrackerModelCollectionReference._(
    CollectionReference<WeightTrackerModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<WeightTrackerModel> get reference =>
      super.reference as CollectionReference<WeightTrackerModel>;

  @override
  WeightTrackerModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return WeightTrackerModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<WeightTrackerModelDocumentReference> add(WeightTrackerModel value) {
    return reference
        .add(value)
        .then((ref) => WeightTrackerModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$WeightTrackerModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class WeightTrackerModelDocumentReference
    extends FirestoreDocumentReference<WeightTrackerModel,
        WeightTrackerModelDocumentSnapshot> {
  factory WeightTrackerModelDocumentReference(
          DocumentReference<WeightTrackerModel> reference) =
      _$WeightTrackerModelDocumentReference;

  DocumentReference<WeightTrackerModel> get reference;

  /// A reference to the [WeightTrackerModelCollectionReference] containing this document.
  WeightTrackerModelCollectionReference get parent {
    return _$WeightTrackerModelCollectionReference(reference.firestore);
  }

  @override
  Stream<WeightTrackerModelDocumentSnapshot> snapshots();

  @override
  Future<WeightTrackerModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String id,
    FieldValue idFieldValue,
    DateTime date,
    FieldValue dateFieldValue,
    double weight,
    FieldValue weightFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String id,
    FieldValue idFieldValue,
    DateTime date,
    FieldValue dateFieldValue,
    double weight,
    FieldValue weightFieldValue,
  });
}

class _$WeightTrackerModelDocumentReference extends FirestoreDocumentReference<
        WeightTrackerModel, WeightTrackerModelDocumentSnapshot>
    implements WeightTrackerModelDocumentReference {
  _$WeightTrackerModelDocumentReference(this.reference);

  @override
  final DocumentReference<WeightTrackerModel> reference;

  /// A reference to the [WeightTrackerModelCollectionReference] containing this document.
  WeightTrackerModelCollectionReference get parent {
    return _$WeightTrackerModelCollectionReference(reference.firestore);
  }

  @override
  Stream<WeightTrackerModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(WeightTrackerModelDocumentSnapshot._);
  }

  @override
  Future<WeightTrackerModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(WeightTrackerModelDocumentSnapshot._);
  }

  @override
  Future<WeightTrackerModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction
        .get(reference)
        .then(WeightTrackerModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? date = _sentinel,
    FieldValue? dateFieldValue,
    Object? weight = _sentinel,
    FieldValue? weightFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      date == _sentinel || dateFieldValue == null,
      "Cannot specify both date and dateFieldValue",
    );
    assert(
      weight == _sentinel || weightFieldValue == null,
      "Cannot specify both weight and weightFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$WeightTrackerModelFieldMap['id']!:
            _$WeightTrackerModelPerFieldToJson.id(id as String),
      if (idFieldValue != null)
        _$WeightTrackerModelFieldMap['id']!: idFieldValue,
      if (date != _sentinel)
        _$WeightTrackerModelFieldMap['date']!:
            _$WeightTrackerModelPerFieldToJson.date(date as DateTime),
      if (dateFieldValue != null)
        _$WeightTrackerModelFieldMap['date']!: dateFieldValue,
      if (weight != _sentinel)
        _$WeightTrackerModelFieldMap['weight']!:
            _$WeightTrackerModelPerFieldToJson.weight(weight as double),
      if (weightFieldValue != null)
        _$WeightTrackerModelFieldMap['weight']!: weightFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? date = _sentinel,
    FieldValue? dateFieldValue,
    Object? weight = _sentinel,
    FieldValue? weightFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      date == _sentinel || dateFieldValue == null,
      "Cannot specify both date and dateFieldValue",
    );
    assert(
      weight == _sentinel || weightFieldValue == null,
      "Cannot specify both weight and weightFieldValue",
    );
    final json = {
      if (id != _sentinel)
        _$WeightTrackerModelFieldMap['id']!:
            _$WeightTrackerModelPerFieldToJson.id(id as String),
      if (idFieldValue != null)
        _$WeightTrackerModelFieldMap['id']!: idFieldValue,
      if (date != _sentinel)
        _$WeightTrackerModelFieldMap['date']!:
            _$WeightTrackerModelPerFieldToJson.date(date as DateTime),
      if (dateFieldValue != null)
        _$WeightTrackerModelFieldMap['date']!: dateFieldValue,
      if (weight != _sentinel)
        _$WeightTrackerModelFieldMap['weight']!:
            _$WeightTrackerModelPerFieldToJson.weight(weight as double),
      if (weightFieldValue != null)
        _$WeightTrackerModelFieldMap['weight']!: weightFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is WeightTrackerModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class WeightTrackerModelQuery
    implements
        QueryReference<WeightTrackerModel, WeightTrackerModelQuerySnapshot> {
  @override
  WeightTrackerModelQuery limit(int limit);

  @override
  WeightTrackerModelQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  WeightTrackerModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    WeightTrackerModelDocumentSnapshot? startAtDocument,
    WeightTrackerModelDocumentSnapshot? endAtDocument,
    WeightTrackerModelDocumentSnapshot? endBeforeDocument,
    WeightTrackerModelDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  WeightTrackerModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  WeightTrackerModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  WeightTrackerModelQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  WeightTrackerModelQuery whereDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  });
  WeightTrackerModelQuery whereWeight({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    bool? isNull,
    List<double>? whereIn,
    List<double>? whereNotIn,
  });

  WeightTrackerModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    WeightTrackerModelDocumentSnapshot? startAtDocument,
    WeightTrackerModelDocumentSnapshot? endAtDocument,
    WeightTrackerModelDocumentSnapshot? endBeforeDocument,
    WeightTrackerModelDocumentSnapshot? startAfterDocument,
  });

  WeightTrackerModelQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    WeightTrackerModelDocumentSnapshot? startAtDocument,
    WeightTrackerModelDocumentSnapshot? endAtDocument,
    WeightTrackerModelDocumentSnapshot? endBeforeDocument,
    WeightTrackerModelDocumentSnapshot? startAfterDocument,
  });

  WeightTrackerModelQuery orderByDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    WeightTrackerModelDocumentSnapshot? startAtDocument,
    WeightTrackerModelDocumentSnapshot? endAtDocument,
    WeightTrackerModelDocumentSnapshot? endBeforeDocument,
    WeightTrackerModelDocumentSnapshot? startAfterDocument,
  });

  WeightTrackerModelQuery orderByWeight({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    WeightTrackerModelDocumentSnapshot? startAtDocument,
    WeightTrackerModelDocumentSnapshot? endAtDocument,
    WeightTrackerModelDocumentSnapshot? endBeforeDocument,
    WeightTrackerModelDocumentSnapshot? startAfterDocument,
  });
}

class _$WeightTrackerModelQuery
    extends QueryReference<WeightTrackerModel, WeightTrackerModelQuerySnapshot>
    implements WeightTrackerModelQuery {
  _$WeightTrackerModelQuery(
    this._collection, {
    required Query<WeightTrackerModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<WeightTrackerModelQuerySnapshot> snapshots(
      [SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(WeightTrackerModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<WeightTrackerModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(WeightTrackerModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  WeightTrackerModelQuery limit(int limit) {
    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  WeightTrackerModelQuery limitToLast(int limit) {
    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  WeightTrackerModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WeightTrackerModelDocumentSnapshot? startAtDocument,
    WeightTrackerModelDocumentSnapshot? endAtDocument,
    WeightTrackerModelDocumentSnapshot? endBeforeDocument,
    WeightTrackerModelDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  WeightTrackerModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  WeightTrackerModelQuery whereDocumentId({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  WeightTrackerModelQuery whereId({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$WeightTrackerModelFieldMap['id']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$WeightTrackerModelPerFieldToJson.id(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$WeightTrackerModelPerFieldToJson.id(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$WeightTrackerModelPerFieldToJson.id(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$WeightTrackerModelPerFieldToJson
                .id(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$WeightTrackerModelPerFieldToJson.id(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$WeightTrackerModelPerFieldToJson
                .id(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$WeightTrackerModelPerFieldToJson.id(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$WeightTrackerModelPerFieldToJson.id(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  WeightTrackerModelQuery whereDate({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  }) {
    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$WeightTrackerModelFieldMap['date']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$WeightTrackerModelPerFieldToJson.date(isEqualTo as DateTime)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$WeightTrackerModelPerFieldToJson.date(isNotEqualTo as DateTime)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$WeightTrackerModelPerFieldToJson.date(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$WeightTrackerModelPerFieldToJson
                .date(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$WeightTrackerModelPerFieldToJson.date(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$WeightTrackerModelPerFieldToJson
                .date(isGreaterThanOrEqualTo as DateTime)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$WeightTrackerModelPerFieldToJson.date(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$WeightTrackerModelPerFieldToJson.date(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  WeightTrackerModelQuery whereWeight({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<double>? whereIn,
    List<double>? whereNotIn,
  }) {
    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$WeightTrackerModelFieldMap['weight']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$WeightTrackerModelPerFieldToJson.weight(isEqualTo as double)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$WeightTrackerModelPerFieldToJson.weight(isNotEqualTo as double)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$WeightTrackerModelPerFieldToJson.weight(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$WeightTrackerModelPerFieldToJson
                .weight(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$WeightTrackerModelPerFieldToJson.weight(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$WeightTrackerModelPerFieldToJson
                .weight(isGreaterThanOrEqualTo as double)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$WeightTrackerModelPerFieldToJson.weight(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$WeightTrackerModelPerFieldToJson.weight(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  WeightTrackerModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WeightTrackerModelDocumentSnapshot? startAtDocument,
    WeightTrackerModelDocumentSnapshot? endAtDocument,
    WeightTrackerModelDocumentSnapshot? endBeforeDocument,
    WeightTrackerModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  WeightTrackerModelQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WeightTrackerModelDocumentSnapshot? startAtDocument,
    WeightTrackerModelDocumentSnapshot? endAtDocument,
    WeightTrackerModelDocumentSnapshot? endBeforeDocument,
    WeightTrackerModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$WeightTrackerModelFieldMap['id']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  WeightTrackerModelQuery orderByDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WeightTrackerModelDocumentSnapshot? startAtDocument,
    WeightTrackerModelDocumentSnapshot? endAtDocument,
    WeightTrackerModelDocumentSnapshot? endBeforeDocument,
    WeightTrackerModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$WeightTrackerModelFieldMap['date']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  WeightTrackerModelQuery orderByWeight({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WeightTrackerModelDocumentSnapshot? startAtDocument,
    WeightTrackerModelDocumentSnapshot? endAtDocument,
    WeightTrackerModelDocumentSnapshot? endBeforeDocument,
    WeightTrackerModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$WeightTrackerModelFieldMap['weight']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$WeightTrackerModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$WeightTrackerModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class WeightTrackerModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<WeightTrackerModel> {
  WeightTrackerModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<WeightTrackerModel> snapshot;

  @override
  WeightTrackerModelDocumentReference get reference {
    return WeightTrackerModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final WeightTrackerModel? data;
}

class WeightTrackerModelQuerySnapshot extends FirestoreQuerySnapshot<
    WeightTrackerModel, WeightTrackerModelQueryDocumentSnapshot> {
  WeightTrackerModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory WeightTrackerModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<WeightTrackerModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(WeightTrackerModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        WeightTrackerModelDocumentSnapshot._,
      );
    }).toList();

    return WeightTrackerModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<WeightTrackerModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    WeightTrackerModelDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<WeightTrackerModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<WeightTrackerModel> snapshot;

  @override
  final List<WeightTrackerModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<WeightTrackerModelDocumentSnapshot>>
      docChanges;
}

class WeightTrackerModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<WeightTrackerModel>
    implements WeightTrackerModelDocumentSnapshot {
  WeightTrackerModelQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<WeightTrackerModel> snapshot;

  @override
  final WeightTrackerModel data;

  @override
  WeightTrackerModelDocumentReference get reference {
    return WeightTrackerModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeightTrackerModel _$WeightTrackerModelFromJson(Map<String, dynamic> json) =>
    WeightTrackerModel(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      weight: (json['weight'] as num).toDouble(),
    );

const _$WeightTrackerModelFieldMap = <String, String>{
  'id': 'id',
  'date': 'date',
  'weight': 'weight',
};

// ignore: unused_element
abstract class _$WeightTrackerModelPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? date(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? weight(double instance) => instance;
}

Map<String, dynamic> _$WeightTrackerModelToJson(WeightTrackerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'weight': instance.weight,
    };
