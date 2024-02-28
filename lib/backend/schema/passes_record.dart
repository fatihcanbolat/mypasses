import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PassesRecord extends FirestoreRecord {
  PassesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "hesapAdi" field.
  String? _hesapAdi;
  String get hesapAdi => _hesapAdi ?? '';
  bool hasHesapAdi() => _hesapAdi != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "kullaniciAdi" field.
  String? _kullaniciAdi;
  String get kullaniciAdi => _kullaniciAdi ?? '';
  bool hasKullaniciAdi() => _kullaniciAdi != null;

  // "sifre" field.
  String? _sifre;
  String get sifre => _sifre ?? '';
  bool hasSifre() => _sifre != null;

  // "aciklama" field.
  String? _aciklama;
  String get aciklama => _aciklama ?? '';
  bool hasAciklama() => _aciklama != null;

  void _initializeFields() {
    _hesapAdi = snapshotData['hesapAdi'] as String?;
    _url = snapshotData['url'] as String?;
    _kullaniciAdi = snapshotData['kullaniciAdi'] as String?;
    _sifre = snapshotData['sifre'] as String?;
    _aciklama = snapshotData['aciklama'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('passes');

  static Stream<PassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PassesRecord.fromSnapshot(s));

  static Future<PassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PassesRecord.fromSnapshot(s));

  static PassesRecord fromSnapshot(DocumentSnapshot snapshot) => PassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PassesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PassesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPassesRecordData({
  String? hesapAdi,
  String? url,
  String? kullaniciAdi,
  String? sifre,
  String? aciklama,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hesapAdi': hesapAdi,
      'url': url,
      'kullaniciAdi': kullaniciAdi,
      'sifre': sifre,
      'aciklama': aciklama,
    }.withoutNulls,
  );

  return firestoreData;
}

class PassesRecordDocumentEquality implements Equality<PassesRecord> {
  const PassesRecordDocumentEquality();

  @override
  bool equals(PassesRecord? e1, PassesRecord? e2) {
    return e1?.hesapAdi == e2?.hesapAdi &&
        e1?.url == e2?.url &&
        e1?.kullaniciAdi == e2?.kullaniciAdi &&
        e1?.sifre == e2?.sifre &&
        e1?.aciklama == e2?.aciklama;
  }

  @override
  int hash(PassesRecord? e) => const ListEquality()
      .hash([e?.hesapAdi, e?.url, e?.kullaniciAdi, e?.sifre, e?.aciklama]);

  @override
  bool isValidKey(Object? o) => o is PassesRecord;
}
