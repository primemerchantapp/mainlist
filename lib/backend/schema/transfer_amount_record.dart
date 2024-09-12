import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransferAmountRecord extends FirestoreRecord {
  TransferAmountRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "transactionDate" field.
  DateTime? _transactionDate;
  DateTime? get transactionDate => _transactionDate;
  bool hasTransactionDate() => _transactionDate != null;

  // "transactionStatus" field.
  String? _transactionStatus;
  String get transactionStatus => _transactionStatus ?? '';
  bool hasTransactionStatus() => _transactionStatus != null;

  // "sender" field.
  String? _sender;
  String get sender => _sender ?? '';
  bool hasSender() => _sender != null;

  // "reciever" field.
  String? _reciever;
  String get reciever => _reciever ?? '';
  bool hasReciever() => _reciever != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _amount = castToType<double>(snapshotData['amount']);
    _transactionDate = snapshotData['transactionDate'] as DateTime?;
    _transactionStatus = snapshotData['transactionStatus'] as String?;
    _sender = snapshotData['sender'] as String?;
    _reciever = snapshotData['reciever'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transferAmount');

  static Stream<TransferAmountRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransferAmountRecord.fromSnapshot(s));

  static Future<TransferAmountRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransferAmountRecord.fromSnapshot(s));

  static TransferAmountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransferAmountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransferAmountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransferAmountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransferAmountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransferAmountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransferAmountRecordData({
  double? amount,
  DateTime? transactionDate,
  String? transactionStatus,
  String? sender,
  String? reciever,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'amount': amount,
      'transactionDate': transactionDate,
      'transactionStatus': transactionStatus,
      'sender': sender,
      'reciever': reciever,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransferAmountRecordDocumentEquality
    implements Equality<TransferAmountRecord> {
  const TransferAmountRecordDocumentEquality();

  @override
  bool equals(TransferAmountRecord? e1, TransferAmountRecord? e2) {
    return e1?.amount == e2?.amount &&
        e1?.transactionDate == e2?.transactionDate &&
        e1?.transactionStatus == e2?.transactionStatus &&
        e1?.sender == e2?.sender &&
        e1?.reciever == e2?.reciever &&
        e1?.user == e2?.user;
  }

  @override
  int hash(TransferAmountRecord? e) => const ListEquality().hash([
        e?.amount,
        e?.transactionDate,
        e?.transactionStatus,
        e?.sender,
        e?.reciever,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is TransferAmountRecord;
}
