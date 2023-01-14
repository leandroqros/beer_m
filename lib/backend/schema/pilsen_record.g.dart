// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pilsen_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PilsenRecord> _$pilsenRecordSerializer =
    new _$PilsenRecordSerializer();

class _$PilsenRecordSerializer implements StructuredSerializer<PilsenRecord> {
  @override
  final Iterable<Type> types = const [PilsenRecord, _$PilsenRecord];
  @override
  final String wireName = 'PilsenRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PilsenRecord object,
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
    value = object.foto;
    if (value != null) {
      result
        ..add('foto')
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
  PilsenRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PilsenRecordBuilder();

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
        case 'foto':
          result.foto = serializers.deserialize(value,
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

class _$PilsenRecord extends PilsenRecord {
  @override
  final String? nombre;
  @override
  final String? foto;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PilsenRecord([void Function(PilsenRecordBuilder)? updates]) =>
      (new PilsenRecordBuilder()..update(updates))._build();

  _$PilsenRecord._({this.nombre, this.foto, this.ffRef}) : super._();

  @override
  PilsenRecord rebuild(void Function(PilsenRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PilsenRecordBuilder toBuilder() => new PilsenRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PilsenRecord &&
        nombre == other.nombre &&
        foto == other.foto &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, nombre.hashCode), foto.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PilsenRecord')
          ..add('nombre', nombre)
          ..add('foto', foto)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PilsenRecordBuilder
    implements Builder<PilsenRecord, PilsenRecordBuilder> {
  _$PilsenRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _foto;
  String? get foto => _$this._foto;
  set foto(String? foto) => _$this._foto = foto;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PilsenRecordBuilder() {
    PilsenRecord._initializeBuilder(this);
  }

  PilsenRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _foto = $v.foto;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PilsenRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PilsenRecord;
  }

  @override
  void update(void Function(PilsenRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PilsenRecord build() => _build();

  _$PilsenRecord _build() {
    final _$result =
        _$v ?? new _$PilsenRecord._(nombre: nombre, foto: foto, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
