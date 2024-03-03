import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TodosRecord extends FirestoreRecord {
  TodosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ad" field.
  String? _ad;
  String get ad => _ad ?? '';
  bool hasAd() => _ad != null;

  // "aciklama" field.
  String? _aciklama;
  String get aciklama => _aciklama ?? '';
  bool hasAciklama() => _aciklama != null;

  // "create_date" field.
  DateTime? _createDate;
  DateTime? get createDate => _createDate;
  bool hasCreateDate() => _createDate != null;

  // "durum" field.
  bool? _durum;
  bool get durum => _durum ?? false;
  bool hasDurum() => _durum != null;

  // "ok_date" field.
  DateTime? _okDate;
  DateTime? get okDate => _okDate;
  bool hasOkDate() => _okDate != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _ad = snapshotData['ad'] as String?;
    _aciklama = snapshotData['aciklama'] as String?;
    _createDate = snapshotData['create_date'] as DateTime?;
    _durum = snapshotData['durum'] as bool?;
    _okDate = snapshotData['ok_date'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('todos');

  static Stream<TodosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TodosRecord.fromSnapshot(s));

  static Future<TodosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TodosRecord.fromSnapshot(s));

  static TodosRecord fromSnapshot(DocumentSnapshot snapshot) => TodosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TodosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TodosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TodosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TodosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTodosRecordData({
  String? ad,
  String? aciklama,
  DateTime? createDate,
  bool? durum,
  DateTime? okDate,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ad': ad,
      'aciklama': aciklama,
      'create_date': createDate,
      'durum': durum,
      'ok_date': okDate,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class TodosRecordDocumentEquality implements Equality<TodosRecord> {
  const TodosRecordDocumentEquality();

  @override
  bool equals(TodosRecord? e1, TodosRecord? e2) {
    return e1?.ad == e2?.ad &&
        e1?.aciklama == e2?.aciklama &&
        e1?.createDate == e2?.createDate &&
        e1?.durum == e2?.durum &&
        e1?.okDate == e2?.okDate &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(TodosRecord? e) => const ListEquality()
      .hash([e?.ad, e?.aciklama, e?.createDate, e?.durum, e?.okDate, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is TodosRecord;
}
