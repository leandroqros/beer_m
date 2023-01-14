import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bebida_record.g.dart';

abstract class BebidaRecord
    implements Built<BebidaRecord, BebidaRecordBuilder> {
  static Serializer<BebidaRecord> get serializer => _$bebidaRecordSerializer;

  String? get nombre;

  String? get fabricante;

  String? get distribuidora;

  String? get pais;

  String? get envase;

  @BuiltValueField(wireName: 'porcentaje_de_alcohol')
  double? get porcentajeDeAlcohol;

  @BuiltValueField(wireName: 'precio_compra')
  double? get precioCompra;

  @BuiltValueField(wireName: 'precio_venta')
  double? get precioVenta;

  @BuiltValueField(wireName: 'diponibilidad_inmediata')
  bool? get diponibilidadInmediata;

  int? get cantidad;

  String? get tipo;

  String? get img;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BebidaRecordBuilder builder) => builder
    ..nombre = ''
    ..fabricante = ''
    ..distribuidora = ''
    ..pais = ''
    ..envase = ''
    ..porcentajeDeAlcohol = 0.0
    ..precioCompra = 0.0
    ..precioVenta = 0.0
    ..diponibilidadInmediata = false
    ..cantidad = 0
    ..tipo = ''
    ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bebida');

  static Stream<BebidaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BebidaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BebidaRecord._();
  factory BebidaRecord([void Function(BebidaRecordBuilder) updates]) =
      _$BebidaRecord;

  static BebidaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBebidaRecordData({
  String? nombre,
  String? fabricante,
  String? distribuidora,
  String? pais,
  String? envase,
  double? porcentajeDeAlcohol,
  double? precioCompra,
  double? precioVenta,
  bool? diponibilidadInmediata,
  int? cantidad,
  String? tipo,
  String? img,
}) {
  final firestoreData = serializers.toFirestore(
    BebidaRecord.serializer,
    BebidaRecord(
      (b) => b
        ..nombre = nombre
        ..fabricante = fabricante
        ..distribuidora = distribuidora
        ..pais = pais
        ..envase = envase
        ..porcentajeDeAlcohol = porcentajeDeAlcohol
        ..precioCompra = precioCompra
        ..precioVenta = precioVenta
        ..diponibilidadInmediata = diponibilidadInmediata
        ..cantidad = cantidad
        ..tipo = tipo
        ..img = img,
    ),
  );

  return firestoreData;
}
