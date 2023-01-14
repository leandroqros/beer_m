// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bebida_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BebidaRecord> _$bebidaRecordSerializer =
    new _$BebidaRecordSerializer();

class _$BebidaRecordSerializer implements StructuredSerializer<BebidaRecord> {
  @override
  final Iterable<Type> types = const [BebidaRecord, _$BebidaRecord];
  @override
  final String wireName = 'BebidaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BebidaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fabricante;
    if (value != null) {
      result
        ..add('fabricante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.distribuidora;
    if (value != null) {
      result
        ..add('distribuidora')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pais;
    if (value != null) {
      result
        ..add('pais')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.envase;
    if (value != null) {
      result
        ..add('envase')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.porcentajeDeAlcohol;
    if (value != null) {
      result
        ..add('porcentaje_de_alcohol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precioCompra;
    if (value != null) {
      result
        ..add('precio_compra')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precioVenta;
    if (value != null) {
      result
        ..add('precio_venta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.diponibilidadInmediata;
    if (value != null) {
      result
        ..add('diponibilidad_inmediata')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tipo;
    if (value != null) {
      result
        ..add('tipo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BebidaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BebidaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fabricante':
          result.fabricante = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'distribuidora':
          result.distribuidora = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pais':
          result.pais = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'envase':
          result.envase = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'porcentaje_de_alcohol':
          result.porcentajeDeAlcohol = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precio_compra':
          result.precioCompra = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'precio_venta':
          result.precioVenta = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'diponibilidad_inmediata':
          result.diponibilidadInmediata = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tipo':
          result.tipo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BebidaRecord extends BebidaRecord {
  @override
  final String? nombre;
  @override
  final String? fabricante;
  @override
  final String? distribuidora;
  @override
  final String? pais;
  @override
  final String? envase;
  @override
  final double? porcentajeDeAlcohol;
  @override
  final double? precioCompra;
  @override
  final double? precioVenta;
  @override
  final bool? diponibilidadInmediata;
  @override
  final int? cantidad;
  @override
  final String? tipo;
  @override
  final String? img;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BebidaRecord([void Function(BebidaRecordBuilder)? updates]) =>
      (new BebidaRecordBuilder()..update(updates))._build();

  _$BebidaRecord._(
      {this.nombre,
      this.fabricante,
      this.distribuidora,
      this.pais,
      this.envase,
      this.porcentajeDeAlcohol,
      this.precioCompra,
      this.precioVenta,
      this.diponibilidadInmediata,
      this.cantidad,
      this.tipo,
      this.img,
      this.ffRef})
      : super._();

  @override
  BebidaRecord rebuild(void Function(BebidaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BebidaRecordBuilder toBuilder() => new BebidaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BebidaRecord &&
        nombre == other.nombre &&
        fabricante == other.fabricante &&
        distribuidora == other.distribuidora &&
        pais == other.pais &&
        envase == other.envase &&
        porcentajeDeAlcohol == other.porcentajeDeAlcohol &&
        precioCompra == other.precioCompra &&
        precioVenta == other.precioVenta &&
        diponibilidadInmediata == other.diponibilidadInmediata &&
        cantidad == other.cantidad &&
        tipo == other.tipo &&
        img == other.img &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, nombre.hashCode),
                                                    fabricante.hashCode),
                                                distribuidora.hashCode),
                                            pais.hashCode),
                                        envase.hashCode),
                                    porcentajeDeAlcohol.hashCode),
                                precioCompra.hashCode),
                            precioVenta.hashCode),
                        diponibilidadInmediata.hashCode),
                    cantidad.hashCode),
                tipo.hashCode),
            img.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BebidaRecord')
          ..add('nombre', nombre)
          ..add('fabricante', fabricante)
          ..add('distribuidora', distribuidora)
          ..add('pais', pais)
          ..add('envase', envase)
          ..add('porcentajeDeAlcohol', porcentajeDeAlcohol)
          ..add('precioCompra', precioCompra)
          ..add('precioVenta', precioVenta)
          ..add('diponibilidadInmediata', diponibilidadInmediata)
          ..add('cantidad', cantidad)
          ..add('tipo', tipo)
          ..add('img', img)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BebidaRecordBuilder
    implements Builder<BebidaRecord, BebidaRecordBuilder> {
  _$BebidaRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _fabricante;
  String? get fabricante => _$this._fabricante;
  set fabricante(String? fabricante) => _$this._fabricante = fabricante;

  String? _distribuidora;
  String? get distribuidora => _$this._distribuidora;
  set distribuidora(String? distribuidora) =>
      _$this._distribuidora = distribuidora;

  String? _pais;
  String? get pais => _$this._pais;
  set pais(String? pais) => _$this._pais = pais;

  String? _envase;
  String? get envase => _$this._envase;
  set envase(String? envase) => _$this._envase = envase;

  double? _porcentajeDeAlcohol;
  double? get porcentajeDeAlcohol => _$this._porcentajeDeAlcohol;
  set porcentajeDeAlcohol(double? porcentajeDeAlcohol) =>
      _$this._porcentajeDeAlcohol = porcentajeDeAlcohol;

  double? _precioCompra;
  double? get precioCompra => _$this._precioCompra;
  set precioCompra(double? precioCompra) => _$this._precioCompra = precioCompra;

  double? _precioVenta;
  double? get precioVenta => _$this._precioVenta;
  set precioVenta(double? precioVenta) => _$this._precioVenta = precioVenta;

  bool? _diponibilidadInmediata;
  bool? get diponibilidadInmediata => _$this._diponibilidadInmediata;
  set diponibilidadInmediata(bool? diponibilidadInmediata) =>
      _$this._diponibilidadInmediata = diponibilidadInmediata;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  String? _tipo;
  String? get tipo => _$this._tipo;
  set tipo(String? tipo) => _$this._tipo = tipo;

  String? _img;
  String? get img => _$this._img;
  set img(String? img) => _$this._img = img;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BebidaRecordBuilder() {
    BebidaRecord._initializeBuilder(this);
  }

  BebidaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _fabricante = $v.fabricante;
      _distribuidora = $v.distribuidora;
      _pais = $v.pais;
      _envase = $v.envase;
      _porcentajeDeAlcohol = $v.porcentajeDeAlcohol;
      _precioCompra = $v.precioCompra;
      _precioVenta = $v.precioVenta;
      _diponibilidadInmediata = $v.diponibilidadInmediata;
      _cantidad = $v.cantidad;
      _tipo = $v.tipo;
      _img = $v.img;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BebidaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BebidaRecord;
  }

  @override
  void update(void Function(BebidaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BebidaRecord build() => _build();

  _$BebidaRecord _build() {
    final _$result = _$v ??
        new _$BebidaRecord._(
            nombre: nombre,
            fabricante: fabricante,
            distribuidora: distribuidora,
            pais: pais,
            envase: envase,
            porcentajeDeAlcohol: porcentajeDeAlcohol,
            precioCompra: precioCompra,
            precioVenta: precioVenta,
            diponibilidadInmediata: diponibilidadInmediata,
            cantidad: cantidad,
            tipo: tipo,
            img: img,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
