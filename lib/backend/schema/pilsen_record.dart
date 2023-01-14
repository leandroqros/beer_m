import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pilsen_record.g.dart';

abstract class PilsenRecord
    implements Built<PilsenRecord, PilsenRecordBuilder> {
  static Serializer<PilsenRecord> get serializer => _$pilsenRecordSerializer;

  String? get nombre;

  String? get foto;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PilsenRecordBuilder builder) => builder
    ..nombre = ''
    ..foto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pilsen');

  static Stream<PilsenRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PilsenRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PilsenRecord._();
  factory PilsenRecord([void Function(PilsenRecordBuilder) updates]) =
      _$PilsenRecord;

  static PilsenRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPilsenRecordData({
  String? nombre,
  String? foto,
}) {
  final firestoreData = serializers.toFirestore(
    PilsenRecord.serializer,
    PilsenRecord(
      (p) => p
        ..nombre = nombre
        ..foto = foto,
    ),
  );

  return firestoreData;
}
