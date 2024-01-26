// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

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
abstract class SessionModelCollectionReference
    implements
        SessionModelQuery,
        FirestoreCollectionReference<SessionModel, SessionModelQuerySnapshot> {
  factory SessionModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$SessionModelCollectionReference;

  static SessionModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return SessionModel.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    SessionModel value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<SessionModel> get reference;

  @override
  SessionModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SessionModelDocumentReference> add(SessionModel value);
}

class _$SessionModelCollectionReference extends _$SessionModelQuery
    implements SessionModelCollectionReference {
  factory _$SessionModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$SessionModelCollectionReference._(
      firestore.collection('sessions').withConverter(
            fromFirestore: SessionModelCollectionReference.fromFirestore,
            toFirestore: SessionModelCollectionReference.toFirestore,
          ),
    );
  }

  _$SessionModelCollectionReference._(
    CollectionReference<SessionModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<SessionModel> get reference =>
      super.reference as CollectionReference<SessionModel>;

  @override
  SessionModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SessionModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SessionModelDocumentReference> add(SessionModel value) {
    return reference
        .add(value)
        .then((ref) => SessionModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SessionModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SessionModelDocumentReference extends FirestoreDocumentReference<
    SessionModel, SessionModelDocumentSnapshot> {
  factory SessionModelDocumentReference(
          DocumentReference<SessionModel> reference) =
      _$SessionModelDocumentReference;

  DocumentReference<SessionModel> get reference;

  /// A reference to the [SessionModelCollectionReference] containing this document.
  SessionModelCollectionReference get parent {
    return _$SessionModelCollectionReference(reference.firestore);
  }

  @override
  Stream<SessionModelDocumentSnapshot> snapshots();

  @override
  Future<SessionModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    int weekday,
    FieldValue weekdayFieldValue,
    List<SessionItemModel> sessionItems,
    FieldValue sessionItemsFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
    bool? completed,
    FieldValue completedFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    int weekday,
    FieldValue weekdayFieldValue,
    List<SessionItemModel> sessionItems,
    FieldValue sessionItemsFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
    bool? completed,
    FieldValue completedFieldValue,
  });
}

class _$SessionModelDocumentReference extends FirestoreDocumentReference<
    SessionModel,
    SessionModelDocumentSnapshot> implements SessionModelDocumentReference {
  _$SessionModelDocumentReference(this.reference);

  @override
  final DocumentReference<SessionModel> reference;

  /// A reference to the [SessionModelCollectionReference] containing this document.
  SessionModelCollectionReference get parent {
    return _$SessionModelCollectionReference(reference.firestore);
  }

  @override
  Stream<SessionModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SessionModelDocumentSnapshot._);
  }

  @override
  Future<SessionModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SessionModelDocumentSnapshot._);
  }

  @override
  Future<SessionModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(SessionModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? weekday = _sentinel,
    FieldValue? weekdayFieldValue,
    Object? sessionItems = _sentinel,
    FieldValue? sessionItemsFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? completed = _sentinel,
    FieldValue? completedFieldValue,
  }) async {
    assert(
      weekday == _sentinel || weekdayFieldValue == null,
      "Cannot specify both weekday and weekdayFieldValue",
    );
    assert(
      sessionItems == _sentinel || sessionItemsFieldValue == null,
      "Cannot specify both sessionItems and sessionItemsFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      completed == _sentinel || completedFieldValue == null,
      "Cannot specify both completed and completedFieldValue",
    );
    final json = {
      if (weekday != _sentinel)
        _$SessionModelFieldMap['weekday']!:
            _$SessionModelPerFieldToJson.weekday(weekday as int),
      if (weekdayFieldValue != null)
        _$SessionModelFieldMap['weekday']!: weekdayFieldValue,
      if (sessionItems != _sentinel)
        _$SessionModelFieldMap['sessionItems']!: _$SessionModelPerFieldToJson
            .sessionItems(sessionItems as List<SessionItemModel>),
      if (sessionItemsFieldValue != null)
        _$SessionModelFieldMap['sessionItems']!: sessionItemsFieldValue,
      if (createdAt != _sentinel)
        _$SessionModelFieldMap['createdAt']!:
            _$SessionModelPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$SessionModelFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$SessionModelFieldMap['updatedAt']!:
            _$SessionModelPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$SessionModelFieldMap['updatedAt']!: updatedAtFieldValue,
      if (completed != _sentinel)
        _$SessionModelFieldMap['completed']!:
            _$SessionModelPerFieldToJson.completed(completed as bool?),
      if (completedFieldValue != null)
        _$SessionModelFieldMap['completed']!: completedFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? weekday = _sentinel,
    FieldValue? weekdayFieldValue,
    Object? sessionItems = _sentinel,
    FieldValue? sessionItemsFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? completed = _sentinel,
    FieldValue? completedFieldValue,
  }) {
    assert(
      weekday == _sentinel || weekdayFieldValue == null,
      "Cannot specify both weekday and weekdayFieldValue",
    );
    assert(
      sessionItems == _sentinel || sessionItemsFieldValue == null,
      "Cannot specify both sessionItems and sessionItemsFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      completed == _sentinel || completedFieldValue == null,
      "Cannot specify both completed and completedFieldValue",
    );
    final json = {
      if (weekday != _sentinel)
        _$SessionModelFieldMap['weekday']!:
            _$SessionModelPerFieldToJson.weekday(weekday as int),
      if (weekdayFieldValue != null)
        _$SessionModelFieldMap['weekday']!: weekdayFieldValue,
      if (sessionItems != _sentinel)
        _$SessionModelFieldMap['sessionItems']!: _$SessionModelPerFieldToJson
            .sessionItems(sessionItems as List<SessionItemModel>),
      if (sessionItemsFieldValue != null)
        _$SessionModelFieldMap['sessionItems']!: sessionItemsFieldValue,
      if (createdAt != _sentinel)
        _$SessionModelFieldMap['createdAt']!:
            _$SessionModelPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$SessionModelFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$SessionModelFieldMap['updatedAt']!:
            _$SessionModelPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$SessionModelFieldMap['updatedAt']!: updatedAtFieldValue,
      if (completed != _sentinel)
        _$SessionModelFieldMap['completed']!:
            _$SessionModelPerFieldToJson.completed(completed as bool?),
      if (completedFieldValue != null)
        _$SessionModelFieldMap['completed']!: completedFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SessionModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SessionModelQuery
    implements QueryReference<SessionModel, SessionModelQuerySnapshot> {
  @override
  SessionModelQuery limit(int limit);

  @override
  SessionModelQuery limitToLast(int limit);

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
  SessionModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
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
  SessionModelQuery whereFieldPath(
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

  SessionModelQuery whereDocumentId({
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
  SessionModelQuery whereWeekday({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  SessionModelQuery whereSessionItems({
    List<SessionItemModel>? isEqualTo,
    List<SessionItemModel>? isNotEqualTo,
    List<SessionItemModel>? isLessThan,
    List<SessionItemModel>? isLessThanOrEqualTo,
    List<SessionItemModel>? isGreaterThan,
    List<SessionItemModel>? isGreaterThanOrEqualTo,
    bool? isNull,
    SessionItemModel? arrayContains,
    List<SessionItemModel>? arrayContainsAny,
  });
  SessionModelQuery whereCreatedAt({
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
  SessionModelQuery whereUpdatedAt({
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
  SessionModelQuery whereCompleted({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool?>? whereIn,
    List<bool?>? whereNotIn,
  });

  SessionModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
  });

  SessionModelQuery orderByWeekday({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
  });

  SessionModelQuery orderBySessionItems({
    bool descending = false,
    List<SessionItemModel> startAt,
    List<SessionItemModel> startAfter,
    List<SessionItemModel> endAt,
    List<SessionItemModel> endBefore,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
  });

  SessionModelQuery orderByCreatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
  });

  SessionModelQuery orderByUpdatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
  });

  SessionModelQuery orderByCompleted({
    bool descending = false,
    bool? startAt,
    bool? startAfter,
    bool? endAt,
    bool? endBefore,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
  });
}

class _$SessionModelQuery
    extends QueryReference<SessionModel, SessionModelQuerySnapshot>
    implements SessionModelQuery {
  _$SessionModelQuery(
    this._collection, {
    required Query<SessionModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SessionModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(SessionModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SessionModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(SessionModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SessionModelQuery limit(int limit) {
    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SessionModelQuery limitToLast(int limit) {
    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  SessionModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
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
    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SessionModelQuery whereFieldPath(
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
    return _$SessionModelQuery(
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

  SessionModelQuery whereDocumentId({
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
    return _$SessionModelQuery(
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

  SessionModelQuery whereWeekday({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SessionModelFieldMap['weekday']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$SessionModelPerFieldToJson.weekday(isEqualTo as int)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$SessionModelPerFieldToJson.weekday(isNotEqualTo as int)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$SessionModelPerFieldToJson.weekday(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SessionModelPerFieldToJson.weekday(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SessionModelPerFieldToJson.weekday(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SessionModelPerFieldToJson
                .weekday(isGreaterThanOrEqualTo as int)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$SessionModelPerFieldToJson.weekday(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SessionModelPerFieldToJson.weekday(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SessionModelQuery whereSessionItems({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    Object? arrayContains = notSetQueryParam,
    List<SessionItemModel>? arrayContainsAny,
  }) {
    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SessionModelFieldMap['sessionItems']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$SessionModelPerFieldToJson
                .sessionItems(isEqualTo as List<SessionItemModel>)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$SessionModelPerFieldToJson
                .sessionItems(isNotEqualTo as List<SessionItemModel>)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$SessionModelPerFieldToJson
                .sessionItems(isLessThan as List<SessionItemModel>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SessionModelPerFieldToJson
                .sessionItems(isLessThanOrEqualTo as List<SessionItemModel>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SessionModelPerFieldToJson
                .sessionItems(isGreaterThan as List<SessionItemModel>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SessionModelPerFieldToJson
                .sessionItems(isGreaterThanOrEqualTo as List<SessionItemModel>)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$SessionModelPerFieldToJson
                        .sessionItems([arrayContains as SessionItemModel])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$SessionModelPerFieldToJson.sessionItems(arrayContainsAny)
                as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SessionModelQuery whereCreatedAt({
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
    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SessionModelFieldMap['createdAt']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$SessionModelPerFieldToJson.createdAt(isEqualTo as DateTime?)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$SessionModelPerFieldToJson.createdAt(isNotEqualTo as DateTime?)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$SessionModelPerFieldToJson.createdAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SessionModelPerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SessionModelPerFieldToJson.createdAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SessionModelPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$SessionModelPerFieldToJson.createdAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SessionModelPerFieldToJson.createdAt(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SessionModelQuery whereUpdatedAt({
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
    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SessionModelFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$SessionModelPerFieldToJson.updatedAt(isEqualTo as DateTime?)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$SessionModelPerFieldToJson.updatedAt(isNotEqualTo as DateTime?)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$SessionModelPerFieldToJson.updatedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SessionModelPerFieldToJson
                .updatedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SessionModelPerFieldToJson.updatedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SessionModelPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$SessionModelPerFieldToJson.updatedAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SessionModelPerFieldToJson.updatedAt(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SessionModelQuery whereCompleted({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<bool?>? whereIn,
    List<bool?>? whereNotIn,
  }) {
    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SessionModelFieldMap['completed']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$SessionModelPerFieldToJson.completed(isEqualTo as bool?)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$SessionModelPerFieldToJson.completed(isNotEqualTo as bool?)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$SessionModelPerFieldToJson.completed(isLessThan as bool?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$SessionModelPerFieldToJson
                .completed(isLessThanOrEqualTo as bool?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$SessionModelPerFieldToJson.completed(isGreaterThan as bool?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$SessionModelPerFieldToJson
                .completed(isGreaterThanOrEqualTo as bool?)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$SessionModelPerFieldToJson.completed(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$SessionModelPerFieldToJson.completed(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  SessionModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
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

    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SessionModelQuery orderByWeekday({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SessionModelFieldMap['weekday']!, descending: descending);
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

    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SessionModelQuery orderBySessionItems({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SessionModelFieldMap['sessionItems']!,
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

    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SessionModelQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SessionModelFieldMap['createdAt']!, descending: descending);
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

    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SessionModelQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SessionModelFieldMap['updatedAt']!, descending: descending);
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

    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SessionModelQuery orderByCompleted({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SessionModelDocumentSnapshot? startAtDocument,
    SessionModelDocumentSnapshot? endAtDocument,
    SessionModelDocumentSnapshot? endBeforeDocument,
    SessionModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SessionModelFieldMap['completed']!, descending: descending);
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

    return _$SessionModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SessionModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SessionModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<SessionModel> {
  SessionModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<SessionModel> snapshot;

  @override
  SessionModelDocumentReference get reference {
    return SessionModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SessionModel? data;
}

class SessionModelQuerySnapshot extends FirestoreQuerySnapshot<SessionModel,
    SessionModelQueryDocumentSnapshot> {
  SessionModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SessionModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<SessionModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(SessionModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SessionModelDocumentSnapshot._,
      );
    }).toList();

    return SessionModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SessionModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SessionModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SessionModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<SessionModel> snapshot;

  @override
  final List<SessionModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SessionModelDocumentSnapshot>> docChanges;
}

class SessionModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SessionModel>
    implements SessionModelDocumentSnapshot {
  SessionModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<SessionModel> snapshot;

  @override
  final SessionModel data;

  @override
  SessionModelDocumentReference get reference {
    return SessionModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionModel _$SessionModelFromJson(Map<String, dynamic> json) => SessionModel(
      id: json['id'] as String,
      weekday: json['weekday'] as int,
      sessionItems: (json['sessionItems'] as List<dynamic>)
          .map((e) => SessionItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      completed: json['completed'] as bool?,
    );

const _$SessionModelFieldMap = <String, String>{
  'id': 'id',
  'weekday': 'weekday',
  'sessionItems': 'sessionItems',
  'createdAt': 'createdAt',
  'updatedAt': 'updatedAt',
  'completed': 'completed',
};

// ignore: unused_element
abstract class _$SessionModelPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? weekday(int instance) => instance;
  // ignore: unused_element
  static Object? sessionItems(List<SessionItemModel> instance) =>
      instance.map((e) => e.toJson()).toList();
  // ignore: unused_element
  static Object? createdAt(DateTime? instance) => instance?.toIso8601String();
  // ignore: unused_element
  static Object? updatedAt(DateTime? instance) => instance?.toIso8601String();
  // ignore: unused_element
  static Object? completed(bool? instance) => instance;
}

Map<String, dynamic> _$SessionModelToJson(SessionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weekday': instance.weekday,
      'sessionItems': instance.sessionItems.map((e) => e.toJson()).toList(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'completed': instance.completed,
    };
