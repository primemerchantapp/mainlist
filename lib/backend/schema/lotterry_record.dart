import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LotterryRecord extends FirestoreRecord {
  LotterryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "draw_time" field.
  DateTime? _drawTime;
  DateTime? get drawTime => _drawTime;
  bool hasDrawTime() => _drawTime != null;

  // "banner" field.
  String? _banner;
  String get banner => _banner ?? '';
  bool hasBanner() => _banner != null;

  // "jockpot" field.
  int? _jockpot;
  int get jockpot => _jockpot ?? 0;
  bool hasJockpot() => _jockpot != null;

  // "bet_amount" field.
  int? _betAmount;
  int get betAmount => _betAmount ?? 0;
  bool hasBetAmount() => _betAmount != null;

  // "winning_amount" field.
  int? _winningAmount;
  int get winningAmount => _winningAmount ?? 0;
  bool hasWinningAmount() => _winningAmount != null;

  // "who_bet" field.
  DocumentReference? _whoBet;
  DocumentReference? get whoBet => _whoBet;
  bool hasWhoBet() => _whoBet != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _drawTime = snapshotData['draw_time'] as DateTime?;
    _banner = snapshotData['banner'] as String?;
    _jockpot = castToType<int>(snapshotData['jockpot']);
    _betAmount = castToType<int>(snapshotData['bet_amount']);
    _winningAmount = castToType<int>(snapshotData['winning_amount']);
    _whoBet = snapshotData['who_bet'] as DocumentReference?;
    _username = snapshotData['username'] as String?;
    _status = snapshotData['status'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lotterry');

  static Stream<LotterryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LotterryRecord.fromSnapshot(s));

  static Future<LotterryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LotterryRecord.fromSnapshot(s));

  static LotterryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LotterryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LotterryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LotterryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LotterryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LotterryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLotterryRecordData({
  String? name,
  DateTime? drawTime,
  String? banner,
  int? jockpot,
  int? betAmount,
  int? winningAmount,
  DocumentReference? whoBet,
  String? username,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'draw_time': drawTime,
      'banner': banner,
      'jockpot': jockpot,
      'bet_amount': betAmount,
      'winning_amount': winningAmount,
      'who_bet': whoBet,
      'username': username,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class LotterryRecordDocumentEquality implements Equality<LotterryRecord> {
  const LotterryRecordDocumentEquality();

  @override
  bool equals(LotterryRecord? e1, LotterryRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.drawTime == e2?.drawTime &&
        e1?.banner == e2?.banner &&
        e1?.jockpot == e2?.jockpot &&
        e1?.betAmount == e2?.betAmount &&
        e1?.winningAmount == e2?.winningAmount &&
        e1?.whoBet == e2?.whoBet &&
        e1?.username == e2?.username &&
        e1?.status == e2?.status;
  }

  @override
  int hash(LotterryRecord? e) => const ListEquality().hash([
        e?.name,
        e?.drawTime,
        e?.banner,
        e?.jockpot,
        e?.betAmount,
        e?.winningAmount,
        e?.whoBet,
        e?.username,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is LotterryRecord;
}
