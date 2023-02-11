import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'field_note_record.g.dart';

abstract class FieldNoteRecord
    implements Built<FieldNoteRecord, FieldNoteRecordBuilder> {
  static Serializer<FieldNoteRecord> get serializer =>
      _$fieldNoteRecordSerializer;

  DocumentReference? get user;

  bool? get global;

  String? get fieldNoteName;

  String? get fieldNoteDescription;

  bool? get globalEntry;

  DateTime? get date;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FieldNoteRecordBuilder builder) => builder
    ..global = false
    ..fieldNoteName = ''
    ..fieldNoteDescription = ''
    ..globalEntry = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FieldNote');

  static Stream<FieldNoteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FieldNoteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FieldNoteRecord._();
  factory FieldNoteRecord([void Function(FieldNoteRecordBuilder) updates]) =
      _$FieldNoteRecord;

  static FieldNoteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFieldNoteRecordData({
  DocumentReference? user,
  bool? global,
  String? fieldNoteName,
  String? fieldNoteDescription,
  bool? globalEntry,
  DateTime? date,
}) {
  final firestoreData = serializers.toFirestore(
    FieldNoteRecord.serializer,
    FieldNoteRecord(
      (f) => f
        ..user = user
        ..global = global
        ..fieldNoteName = fieldNoteName
        ..fieldNoteDescription = fieldNoteDescription
        ..globalEntry = globalEntry
        ..date = date,
    ),
  );

  return firestoreData;
}
