// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_note_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FieldNoteRecord> _$fieldNoteRecordSerializer =
    new _$FieldNoteRecordSerializer();

class _$FieldNoteRecordSerializer
    implements StructuredSerializer<FieldNoteRecord> {
  @override
  final Iterable<Type> types = const [FieldNoteRecord, _$FieldNoteRecord];
  @override
  final String wireName = 'FieldNoteRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FieldNoteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.global;
    if (value != null) {
      result
        ..add('global')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.fieldNoteName;
    if (value != null) {
      result
        ..add('fieldNoteName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fieldNoteDescription;
    if (value != null) {
      result
        ..add('fieldNoteDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.globalEntry;
    if (value != null) {
      result
        ..add('globalEntry')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  FieldNoteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FieldNoteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'global':
          result.global = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'fieldNoteName':
          result.fieldNoteName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fieldNoteDescription':
          result.fieldNoteDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'globalEntry':
          result.globalEntry = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$FieldNoteRecord extends FieldNoteRecord {
  @override
  final DocumentReference<Object?>? user;
  @override
  final bool? global;
  @override
  final String? fieldNoteName;
  @override
  final String? fieldNoteDescription;
  @override
  final bool? globalEntry;
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FieldNoteRecord([void Function(FieldNoteRecordBuilder)? updates]) =>
      (new FieldNoteRecordBuilder()..update(updates))._build();

  _$FieldNoteRecord._(
      {this.user,
      this.global,
      this.fieldNoteName,
      this.fieldNoteDescription,
      this.globalEntry,
      this.date,
      this.ffRef})
      : super._();

  @override
  FieldNoteRecord rebuild(void Function(FieldNoteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldNoteRecordBuilder toBuilder() =>
      new FieldNoteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldNoteRecord &&
        user == other.user &&
        global == other.global &&
        fieldNoteName == other.fieldNoteName &&
        fieldNoteDescription == other.fieldNoteDescription &&
        globalEntry == other.globalEntry &&
        date == other.date &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, user.hashCode), global.hashCode),
                        fieldNoteName.hashCode),
                    fieldNoteDescription.hashCode),
                globalEntry.hashCode),
            date.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldNoteRecord')
          ..add('user', user)
          ..add('global', global)
          ..add('fieldNoteName', fieldNoteName)
          ..add('fieldNoteDescription', fieldNoteDescription)
          ..add('globalEntry', globalEntry)
          ..add('date', date)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FieldNoteRecordBuilder
    implements Builder<FieldNoteRecord, FieldNoteRecordBuilder> {
  _$FieldNoteRecord? _$v;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  bool? _global;
  bool? get global => _$this._global;
  set global(bool? global) => _$this._global = global;

  String? _fieldNoteName;
  String? get fieldNoteName => _$this._fieldNoteName;
  set fieldNoteName(String? fieldNoteName) =>
      _$this._fieldNoteName = fieldNoteName;

  String? _fieldNoteDescription;
  String? get fieldNoteDescription => _$this._fieldNoteDescription;
  set fieldNoteDescription(String? fieldNoteDescription) =>
      _$this._fieldNoteDescription = fieldNoteDescription;

  bool? _globalEntry;
  bool? get globalEntry => _$this._globalEntry;
  set globalEntry(bool? globalEntry) => _$this._globalEntry = globalEntry;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FieldNoteRecordBuilder() {
    FieldNoteRecord._initializeBuilder(this);
  }

  FieldNoteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _global = $v.global;
      _fieldNoteName = $v.fieldNoteName;
      _fieldNoteDescription = $v.fieldNoteDescription;
      _globalEntry = $v.globalEntry;
      _date = $v.date;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldNoteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FieldNoteRecord;
  }

  @override
  void update(void Function(FieldNoteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldNoteRecord build() => _build();

  _$FieldNoteRecord _build() {
    final _$result = _$v ??
        new _$FieldNoteRecord._(
            user: user,
            global: global,
            fieldNoteName: fieldNoteName,
            fieldNoteDescription: fieldNoteDescription,
            globalEntry: globalEntry,
            date: date,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
