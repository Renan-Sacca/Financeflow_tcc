import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'noticias_record.g.dart';

abstract class NoticiasRecord
    implements Built<NoticiasRecord, NoticiasRecordBuilder> {
  static Serializer<NoticiasRecord> get serializer =>
      _$noticiasRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  String get conteudo;

  @nullable
  String get imagem;

  @nullable
  int get likes;

  @nullable
  DateTime get data;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NoticiasRecordBuilder builder) => builder
    ..titulo = ''
    ..conteudo = ''
    ..imagem = ''
    ..likes = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('noticias');

  static Stream<NoticiasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<NoticiasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NoticiasRecord._();
  factory NoticiasRecord([void Function(NoticiasRecordBuilder) updates]) =
      _$NoticiasRecord;

  static NoticiasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNoticiasRecordData({
  String titulo,
  String conteudo,
  String imagem,
  int likes,
  DateTime data,
}) =>
    serializers.toFirestore(
        NoticiasRecord.serializer,
        NoticiasRecord((n) => n
          ..titulo = titulo
          ..conteudo = conteudo
          ..imagem = imagem
          ..likes = likes
          ..data = data));
