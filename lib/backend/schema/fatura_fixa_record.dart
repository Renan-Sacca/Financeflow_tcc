import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fatura_fixa_record.g.dart';

abstract class FaturaFixaRecord
    implements Built<FaturaFixaRecord, FaturaFixaRecordBuilder> {
  static Serializer<FaturaFixaRecord> get serializer =>
      _$faturaFixaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  double get valor;

  @nullable
  @BuiltValueField(wireName: 'banco_desc')
  String get bancoDesc;

  @nullable
  @BuiltValueField(wireName: 'ja_descontou')
  bool get jaDescontou;

  @nullable
  @BuiltValueField(wireName: 'user_fix')
  String get userFix;

  @nullable
  int get id;

  @nullable
  String get idd;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FaturaFixaRecordBuilder builder) => builder
    ..nome = ''
    ..valor = 0.0
    ..bancoDesc = ''
    ..jaDescontou = false
    ..userFix = ''
    ..id = 0
    ..idd = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fatura_fixa');

  static Stream<FaturaFixaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FaturaFixaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FaturaFixaRecord._();
  factory FaturaFixaRecord([void Function(FaturaFixaRecordBuilder) updates]) =
      _$FaturaFixaRecord;

  static FaturaFixaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFaturaFixaRecordData({
  String nome,
  double valor,
  String bancoDesc,
  bool jaDescontou,
  String userFix,
  int id,
  String idd,
}) =>
    serializers.toFirestore(
        FaturaFixaRecord.serializer,
        FaturaFixaRecord((f) => f
          ..nome = nome
          ..valor = valor
          ..bancoDesc = bancoDesc
          ..jaDescontou = jaDescontou
          ..userFix = userFix
          ..id = id
          ..idd = idd));
