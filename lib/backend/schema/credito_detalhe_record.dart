import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'credito_detalhe_record.g.dart';

abstract class CreditoDetalheRecord
    implements Built<CreditoDetalheRecord, CreditoDetalheRecordBuilder> {
  static Serializer<CreditoDetalheRecord> get serializer =>
      _$creditoDetalheRecordSerializer;

  @nullable
  int get vezes;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CreditoDetalheRecordBuilder builder) =>
      builder..vezes = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('credito_detalhe');

  static Stream<CreditoDetalheRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CreditoDetalheRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CreditoDetalheRecord._();
  factory CreditoDetalheRecord(
          [void Function(CreditoDetalheRecordBuilder) updates]) =
      _$CreditoDetalheRecord;

  static CreditoDetalheRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCreditoDetalheRecordData({
  int vezes,
}) =>
    serializers.toFirestore(CreditoDetalheRecord.serializer,
        CreditoDetalheRecord((c) => c..vezes = vezes));
