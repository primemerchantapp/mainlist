import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BannersRecord extends FirestoreRecord {
  BannersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "row1" field.
  String? _row1;
  String get row1 => _row1 ?? '';
  bool hasRow1() => _row1 != null;

  // "row2" field.
  String? _row2;
  String get row2 => _row2 ?? '';
  bool hasRow2() => _row2 != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _video = snapshotData['video'] as String?;
    _description = snapshotData['description'] as String?;
    _row1 = snapshotData['row1'] as String?;
    _row2 = snapshotData['row2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('banners');

  static Stream<BannersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BannersRecord.fromSnapshot(s));

  static Future<BannersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BannersRecord.fromSnapshot(s));

  static BannersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BannersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BannersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BannersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BannersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BannersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBannersRecordData({
  String? name,
  String? image,
  String? video,
  String? description,
  String? row1,
  String? row2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'video': video,
      'description': description,
      'row1': row1,
      'row2': row2,
    }.withoutNulls,
  );

  return firestoreData;
}

class BannersRecordDocumentEquality implements Equality<BannersRecord> {
  const BannersRecordDocumentEquality();

  @override
  bool equals(BannersRecord? e1, BannersRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.video == e2?.video &&
        e1?.description == e2?.description &&
        e1?.row1 == e2?.row1 &&
        e1?.row2 == e2?.row2;
  }

  @override
  int hash(BannersRecord? e) => const ListEquality()
      .hash([e?.name, e?.image, e?.video, e?.description, e?.row1, e?.row2]);

  @override
  bool isValidKey(Object? o) => o is BannersRecord;
}
