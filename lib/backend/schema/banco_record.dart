import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'banco_record.g.dart';

abstract class BancoRecord implements Built<BancoRecord, BancoRecordBuilder> {
  static Serializer<BancoRecord> get serializer => _$bancoRecordSerializer;

  @nullable
  String get nome;

  @nullable
  double get dinheiro;

  @nullable
  double get limite;

  @nullable
  @BuiltValueField(wireName: 'data_cartao')
  DateTime get dataCartao;

  @nullable
  @BuiltValueField(wireName: 'banco_user')
  DocumentReference get bancoUser;

  @nullable
  @BuiltValueField(wireName: 'banco_users')
  String get bancoUsers;

  @nullable
  @BuiltValueField(wireName: 'banco_ids')
  String get bancoIds;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BancoRecordBuilder builder) => builder
    ..nome = ''
    ..dinheiro = 0.0
    ..limite = 0.0
    ..bancoUsers = ''
    ..bancoIds = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('banco');

  static Stream<BancoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BancoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BancoRecord._();
  factory BancoRecord([void Function(BancoRecordBuilder) updates]) =
      _$BancoRecord;

  static BancoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBancoRecordData({
  String nome,
  double dinheiro,
  double limite,
  DateTime dataCartao,
  DocumentReference bancoUser,
  String bancoUsers,
  String bancoIds,
}) =>
    serializers.toFirestore(
        BancoRecord.serializer,
        BancoRecord((b) => b
          ..nome = nome
          ..dinheiro = dinheiro
          ..limite = limite
          ..dataCartao = dataCartao
          ..bancoUser = bancoUser
          ..bancoUsers = bancoUsers
          ..bancoIds = bancoIds));
