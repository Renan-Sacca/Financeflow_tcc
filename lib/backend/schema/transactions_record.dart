import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transactions_record.g.dart';

abstract class TransactionsRecord
    implements Built<TransactionsRecord, TransactionsRecordBuilder> {
  static Serializer<TransactionsRecord> get serializer =>
      _$transactionsRecordSerializer;

  @nullable
  String get transactionName;

  @nullable
  DateTime get transactionTime;

  @nullable
  DocumentReference get category;

  @nullable
  DocumentReference get user;

  @nullable
  String get transactionReason;

  @nullable
  double get transactionValor;

  @nullable
  String get categoryName;

  @nullable
  String get categoryTipo;

  @nullable
  @BuiltValueField(wireName: 'transaction_banco')
  String get transactionBanco;

  @nullable
  String get id;

  @nullable
  BuiltList<String> get parcelas;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TransactionsRecordBuilder builder) => builder
    ..transactionName = ''
    ..transactionReason = ''
    ..transactionValor = 0.0
    ..categoryName = ''
    ..categoryTipo = ''
    ..transactionBanco = ''
    ..id = ''
    ..parcelas = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TransactionsRecord._();
  factory TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =
      _$TransactionsRecord;

  static TransactionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTransactionsRecordData({
  String transactionName,
  DateTime transactionTime,
  DocumentReference category,
  DocumentReference user,
  String transactionReason,
  double transactionValor,
  String categoryName,
  String categoryTipo,
  String transactionBanco,
  String id,
}) =>
    serializers.toFirestore(
        TransactionsRecord.serializer,
        TransactionsRecord((t) => t
          ..transactionName = transactionName
          ..transactionTime = transactionTime
          ..category = category
          ..user = user
          ..transactionReason = transactionReason
          ..transactionValor = transactionValor
          ..categoryName = categoryName
          ..categoryTipo = categoryTipo
          ..transactionBanco = transactionBanco
          ..id = id
          ..parcelas = null));
