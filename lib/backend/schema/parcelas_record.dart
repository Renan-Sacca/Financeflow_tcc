import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'parcelas_record.g.dart';

abstract class ParcelasRecord
    implements Built<ParcelasRecord, ParcelasRecordBuilder> {
  static Serializer<ParcelasRecord> get serializer =>
      _$parcelasRecordSerializer;

  @nullable
  String get id;

  @nullable
  double get valor;

  @nullable
  bool get pagou;

  @nullable
  String get idd;

  @nullable
  int get numero;

  @nullable
  int get pag;

  @nullable
  String get banco;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ParcelasRecordBuilder builder) => builder
    ..id = ''
    ..valor = 0.0
    ..pagou = false
    ..idd = ''
    ..numero = 0
    ..pag = 0
    ..banco = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parcelas');

  static Stream<ParcelasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ParcelasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ParcelasRecord._();
  factory ParcelasRecord([void Function(ParcelasRecordBuilder) updates]) =
      _$ParcelasRecord;

  static ParcelasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createParcelasRecordData({
  String id,
  double valor,
  bool pagou,
  String idd,
  int numero,
  int pag,
  String banco,
}) =>
    serializers.toFirestore(
        ParcelasRecord.serializer,
        ParcelasRecord((p) => p
          ..id = id
          ..valor = valor
          ..pagou = pagou
          ..idd = idd
          ..numero = numero
          ..pag = pag
          ..banco = banco));
