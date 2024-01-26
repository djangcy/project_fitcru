// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_plan_model.dart';

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
abstract class MealPlanModelCollectionReference
    implements
        MealPlanModelQuery,
        FirestoreCollectionReference<MealPlanModel,
            MealPlanModelQuerySnapshot> {
  factory MealPlanModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$MealPlanModelCollectionReference;

  static MealPlanModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return MealPlanModel.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    MealPlanModel value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<MealPlanModel> get reference;

  @override
  MealPlanModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MealPlanModelDocumentReference> add(MealPlanModel value);
}

class _$MealPlanModelCollectionReference extends _$MealPlanModelQuery
    implements MealPlanModelCollectionReference {
  factory _$MealPlanModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$MealPlanModelCollectionReference._(
      firestore.collection('meal_plans').withConverter(
            fromFirestore: MealPlanModelCollectionReference.fromFirestore,
            toFirestore: MealPlanModelCollectionReference.toFirestore,
          ),
    );
  }

  _$MealPlanModelCollectionReference._(
    CollectionReference<MealPlanModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<MealPlanModel> get reference =>
      super.reference as CollectionReference<MealPlanModel>;

  @override
  MealPlanModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return MealPlanModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<MealPlanModelDocumentReference> add(MealPlanModel value) {
    return reference
        .add(value)
        .then((ref) => MealPlanModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MealPlanModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MealPlanModelDocumentReference
    extends FirestoreDocumentReference<MealPlanModel,
        MealPlanModelDocumentSnapshot> {
  factory MealPlanModelDocumentReference(
          DocumentReference<MealPlanModel> reference) =
      _$MealPlanModelDocumentReference;

  DocumentReference<MealPlanModel> get reference;

  /// A reference to the [MealPlanModelCollectionReference] containing this document.
  MealPlanModelCollectionReference get parent {
    return _$MealPlanModelCollectionReference(reference.firestore);
  }

  @override
  Stream<MealPlanModelDocumentSnapshot> snapshots();

  @override
  Future<MealPlanModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    List<MealItemModel> mealItems,
    FieldValue mealItemsFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    List<MealItemModel> mealItems,
    FieldValue mealItemsFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
  });
}

class _$MealPlanModelDocumentReference extends FirestoreDocumentReference<
    MealPlanModel,
    MealPlanModelDocumentSnapshot> implements MealPlanModelDocumentReference {
  _$MealPlanModelDocumentReference(this.reference);

  @override
  final DocumentReference<MealPlanModel> reference;

  /// A reference to the [MealPlanModelCollectionReference] containing this document.
  MealPlanModelCollectionReference get parent {
    return _$MealPlanModelCollectionReference(reference.firestore);
  }

  @override
  Stream<MealPlanModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(MealPlanModelDocumentSnapshot._);
  }

  @override
  Future<MealPlanModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MealPlanModelDocumentSnapshot._);
  }

  @override
  Future<MealPlanModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(MealPlanModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? mealItems = _sentinel,
    FieldValue? mealItemsFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) async {
    assert(
      mealItems == _sentinel || mealItemsFieldValue == null,
      "Cannot specify both mealItems and mealItemsFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (mealItems != _sentinel)
        _$MealPlanModelFieldMap['mealItems']!: _$MealPlanModelPerFieldToJson
            .mealItems(mealItems as List<MealItemModel>),
      if (mealItemsFieldValue != null)
        _$MealPlanModelFieldMap['mealItems']!: mealItemsFieldValue,
      if (description != _sentinel)
        _$MealPlanModelFieldMap['description']!:
            _$MealPlanModelPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$MealPlanModelFieldMap['description']!: descriptionFieldValue,
      if (updatedAt != _sentinel)
        _$MealPlanModelFieldMap['updatedAt']!:
            _$MealPlanModelPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$MealPlanModelFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? mealItems = _sentinel,
    FieldValue? mealItemsFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) {
    assert(
      mealItems == _sentinel || mealItemsFieldValue == null,
      "Cannot specify both mealItems and mealItemsFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (mealItems != _sentinel)
        _$MealPlanModelFieldMap['mealItems']!: _$MealPlanModelPerFieldToJson
            .mealItems(mealItems as List<MealItemModel>),
      if (mealItemsFieldValue != null)
        _$MealPlanModelFieldMap['mealItems']!: mealItemsFieldValue,
      if (description != _sentinel)
        _$MealPlanModelFieldMap['description']!:
            _$MealPlanModelPerFieldToJson.description(description as String?),
      if (descriptionFieldValue != null)
        _$MealPlanModelFieldMap['description']!: descriptionFieldValue,
      if (updatedAt != _sentinel)
        _$MealPlanModelFieldMap['updatedAt']!:
            _$MealPlanModelPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$MealPlanModelFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is MealPlanModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class MealPlanModelQuery
    implements QueryReference<MealPlanModel, MealPlanModelQuerySnapshot> {
  @override
  MealPlanModelQuery limit(int limit);

  @override
  MealPlanModelQuery limitToLast(int limit);

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
  MealPlanModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    MealPlanModelDocumentSnapshot? startAtDocument,
    MealPlanModelDocumentSnapshot? endAtDocument,
    MealPlanModelDocumentSnapshot? endBeforeDocument,
    MealPlanModelDocumentSnapshot? startAfterDocument,
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
  MealPlanModelQuery whereFieldPath(
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

  MealPlanModelQuery whereDocumentId({
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
  MealPlanModelQuery whereMealItems({
    List<MealItemModel>? isEqualTo,
    List<MealItemModel>? isNotEqualTo,
    List<MealItemModel>? isLessThan,
    List<MealItemModel>? isLessThanOrEqualTo,
    List<MealItemModel>? isGreaterThan,
    List<MealItemModel>? isGreaterThanOrEqualTo,
    bool? isNull,
    MealItemModel? arrayContains,
    List<MealItemModel>? arrayContainsAny,
  });
  MealPlanModelQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  MealPlanModelQuery whereUpdatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  });

  MealPlanModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MealPlanModelDocumentSnapshot? startAtDocument,
    MealPlanModelDocumentSnapshot? endAtDocument,
    MealPlanModelDocumentSnapshot? endBeforeDocument,
    MealPlanModelDocumentSnapshot? startAfterDocument,
  });

  MealPlanModelQuery orderByMealItems({
    bool descending = false,
    List<MealItemModel> startAt,
    List<MealItemModel> startAfter,
    List<MealItemModel> endAt,
    List<MealItemModel> endBefore,
    MealPlanModelDocumentSnapshot? startAtDocument,
    MealPlanModelDocumentSnapshot? endAtDocument,
    MealPlanModelDocumentSnapshot? endBeforeDocument,
    MealPlanModelDocumentSnapshot? startAfterDocument,
  });

  MealPlanModelQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    MealPlanModelDocumentSnapshot? startAtDocument,
    MealPlanModelDocumentSnapshot? endAtDocument,
    MealPlanModelDocumentSnapshot? endBeforeDocument,
    MealPlanModelDocumentSnapshot? startAfterDocument,
  });

  MealPlanModelQuery orderByUpdatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    MealPlanModelDocumentSnapshot? startAtDocument,
    MealPlanModelDocumentSnapshot? endAtDocument,
    MealPlanModelDocumentSnapshot? endBeforeDocument,
    MealPlanModelDocumentSnapshot? startAfterDocument,
  });
}

class _$MealPlanModelQuery
    extends QueryReference<MealPlanModel, MealPlanModelQuerySnapshot>
    implements MealPlanModelQuery {
  _$MealPlanModelQuery(
    this._collection, {
    required Query<MealPlanModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<MealPlanModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(MealPlanModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<MealPlanModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(MealPlanModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  MealPlanModelQuery limit(int limit) {
    return _$MealPlanModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MealPlanModelQuery limitToLast(int limit) {
    return _$MealPlanModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  MealPlanModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MealPlanModelDocumentSnapshot? startAtDocument,
    MealPlanModelDocumentSnapshot? endAtDocument,
    MealPlanModelDocumentSnapshot? endBeforeDocument,
    MealPlanModelDocumentSnapshot? startAfterDocument,
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
    return _$MealPlanModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MealPlanModelQuery whereFieldPath(
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
    return _$MealPlanModelQuery(
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

  MealPlanModelQuery whereDocumentId({
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
    return _$MealPlanModelQuery(
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

  MealPlanModelQuery whereMealItems({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    Object? arrayContains = notSetQueryParam,
    List<MealItemModel>? arrayContainsAny,
  }) {
    return _$MealPlanModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MealPlanModelFieldMap['mealItems']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$MealPlanModelPerFieldToJson
                .mealItems(isEqualTo as List<MealItemModel>)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$MealPlanModelPerFieldToJson
                .mealItems(isNotEqualTo as List<MealItemModel>)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$MealPlanModelPerFieldToJson
                .mealItems(isLessThan as List<MealItemModel>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MealPlanModelPerFieldToJson
                .mealItems(isLessThanOrEqualTo as List<MealItemModel>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MealPlanModelPerFieldToJson
                .mealItems(isGreaterThan as List<MealItemModel>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MealPlanModelPerFieldToJson
                .mealItems(isGreaterThanOrEqualTo as List<MealItemModel>)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$MealPlanModelPerFieldToJson
                    .mealItems([arrayContains as MealItemModel]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$MealPlanModelPerFieldToJson.mealItems(arrayContainsAny)
                as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MealPlanModelQuery whereDescription({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$MealPlanModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MealPlanModelFieldMap['description']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$MealPlanModelPerFieldToJson.description(isEqualTo as String?)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$MealPlanModelPerFieldToJson.description(isNotEqualTo as String?)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$MealPlanModelPerFieldToJson.description(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MealPlanModelPerFieldToJson
                .description(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MealPlanModelPerFieldToJson
                .description(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MealPlanModelPerFieldToJson
                .description(isGreaterThanOrEqualTo as String?)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$MealPlanModelPerFieldToJson.description(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$MealPlanModelPerFieldToJson.description(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MealPlanModelQuery whereUpdatedAt({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  }) {
    return _$MealPlanModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MealPlanModelFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$MealPlanModelPerFieldToJson.updatedAt(isEqualTo as DateTime?)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$MealPlanModelPerFieldToJson.updatedAt(isNotEqualTo as DateTime?)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$MealPlanModelPerFieldToJson.updatedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MealPlanModelPerFieldToJson
                .updatedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MealPlanModelPerFieldToJson
                .updatedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MealPlanModelPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$MealPlanModelPerFieldToJson.updatedAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$MealPlanModelPerFieldToJson.updatedAt(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MealPlanModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MealPlanModelDocumentSnapshot? startAtDocument,
    MealPlanModelDocumentSnapshot? endAtDocument,
    MealPlanModelDocumentSnapshot? endBeforeDocument,
    MealPlanModelDocumentSnapshot? startAfterDocument,
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

    return _$MealPlanModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MealPlanModelQuery orderByMealItems({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MealPlanModelDocumentSnapshot? startAtDocument,
    MealPlanModelDocumentSnapshot? endAtDocument,
    MealPlanModelDocumentSnapshot? endBeforeDocument,
    MealPlanModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MealPlanModelFieldMap['mealItems']!, descending: descending);
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

    return _$MealPlanModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MealPlanModelQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MealPlanModelDocumentSnapshot? startAtDocument,
    MealPlanModelDocumentSnapshot? endAtDocument,
    MealPlanModelDocumentSnapshot? endBeforeDocument,
    MealPlanModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$MealPlanModelFieldMap['description']!,
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

    return _$MealPlanModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MealPlanModelQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MealPlanModelDocumentSnapshot? startAtDocument,
    MealPlanModelDocumentSnapshot? endAtDocument,
    MealPlanModelDocumentSnapshot? endBeforeDocument,
    MealPlanModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MealPlanModelFieldMap['updatedAt']!, descending: descending);
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

    return _$MealPlanModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$MealPlanModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MealPlanModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<MealPlanModel> {
  MealPlanModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<MealPlanModel> snapshot;

  @override
  MealPlanModelDocumentReference get reference {
    return MealPlanModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final MealPlanModel? data;
}

class MealPlanModelQuerySnapshot extends FirestoreQuerySnapshot<MealPlanModel,
    MealPlanModelQueryDocumentSnapshot> {
  MealPlanModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory MealPlanModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<MealPlanModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(MealPlanModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        MealPlanModelDocumentSnapshot._,
      );
    }).toList();

    return MealPlanModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<MealPlanModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    MealPlanModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<MealPlanModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<MealPlanModel> snapshot;

  @override
  final List<MealPlanModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MealPlanModelDocumentSnapshot>> docChanges;
}

class MealPlanModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<MealPlanModel>
    implements MealPlanModelDocumentSnapshot {
  MealPlanModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<MealPlanModel> snapshot;

  @override
  final MealPlanModel data;

  @override
  MealPlanModelDocumentReference get reference {
    return MealPlanModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealPlanModel _$MealPlanModelFromJson(Map<String, dynamic> json) =>
    MealPlanModel(
      id: json['id'] as String,
      mealItems: (json['mealItems'] as List<dynamic>)
          .map((e) => MealItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

const _$MealPlanModelFieldMap = <String, String>{
  'id': 'id',
  'mealItems': 'mealItems',
  'description': 'description',
  'updatedAt': 'updatedAt',
};

// ignore: unused_element
abstract class _$MealPlanModelPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? mealItems(List<MealItemModel> instance) =>
      instance.map((e) => e.toJson()).toList();
  // ignore: unused_element
  static Object? description(String? instance) => instance;
  // ignore: unused_element
  static Object? updatedAt(DateTime? instance) => instance?.toIso8601String();
}

Map<String, dynamic> _$MealPlanModelToJson(MealPlanModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mealItems': instance.mealItems.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
