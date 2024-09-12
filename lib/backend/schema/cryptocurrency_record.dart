import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CryptocurrencyRecord extends FirestoreRecord {
  CryptocurrencyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "symbol" field.
  String? _symbol;
  String get symbol => _symbol ?? '';
  bool hasSymbol() => _symbol != null;

  // "price_usd" field.
  double? _priceUsd;
  double get priceUsd => _priceUsd ?? 0.0;
  bool hasPriceUsd() => _priceUsd != null;

  // "price_btc" field.
  double? _priceBtc;
  double get priceBtc => _priceBtc ?? 0.0;
  bool hasPriceBtc() => _priceBtc != null;

  // "price_eth" field.
  double? _priceEth;
  double get priceEth => _priceEth ?? 0.0;
  bool hasPriceEth() => _priceEth != null;

  // "market_cap_usd" field.
  double? _marketCapUsd;
  double get marketCapUsd => _marketCapUsd ?? 0.0;
  bool hasMarketCapUsd() => _marketCapUsd != null;

  // "circulating_supply" field.
  double? _circulatingSupply;
  double get circulatingSupply => _circulatingSupply ?? 0.0;
  bool hasCirculatingSupply() => _circulatingSupply != null;

  // "volume_usd_24h" field.
  double? _volumeUsd24h;
  double get volumeUsd24h => _volumeUsd24h ?? 0.0;
  bool hasVolumeUsd24h() => _volumeUsd24h != null;

  // "change_1h" field.
  double? _change1h;
  double get change1h => _change1h ?? 0.0;
  bool hasChange1h() => _change1h != null;

  // "change_24h" field.
  double? _change24h;
  double get change24h => _change24h ?? 0.0;
  bool hasChange24h() => _change24h != null;

  // "change_7d" field.
  double? _change7d;
  double get change7d => _change7d ?? 0.0;
  bool hasChange7d() => _change7d != null;

  // "rank" field.
  double? _rank;
  double get rank => _rank ?? 0.0;
  bool hasRank() => _rank != null;

  // "last_updated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  void _initializeFields() {
    _symbol = snapshotData['symbol'] as String?;
    _priceUsd = castToType<double>(snapshotData['price_usd']);
    _priceBtc = castToType<double>(snapshotData['price_btc']);
    _priceEth = castToType<double>(snapshotData['price_eth']);
    _marketCapUsd = castToType<double>(snapshotData['market_cap_usd']);
    _circulatingSupply = castToType<double>(snapshotData['circulating_supply']);
    _volumeUsd24h = castToType<double>(snapshotData['volume_usd_24h']);
    _change1h = castToType<double>(snapshotData['change_1h']);
    _change24h = castToType<double>(snapshotData['change_24h']);
    _change7d = castToType<double>(snapshotData['change_7d']);
    _rank = castToType<double>(snapshotData['rank']);
    _lastUpdated = snapshotData['last_updated'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cryptocurrency');

  static Stream<CryptocurrencyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CryptocurrencyRecord.fromSnapshot(s));

  static Future<CryptocurrencyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CryptocurrencyRecord.fromSnapshot(s));

  static CryptocurrencyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CryptocurrencyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CryptocurrencyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CryptocurrencyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CryptocurrencyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CryptocurrencyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCryptocurrencyRecordData({
  String? symbol,
  double? priceUsd,
  double? priceBtc,
  double? priceEth,
  double? marketCapUsd,
  double? circulatingSupply,
  double? volumeUsd24h,
  double? change1h,
  double? change24h,
  double? change7d,
  double? rank,
  DateTime? lastUpdated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'symbol': symbol,
      'price_usd': priceUsd,
      'price_btc': priceBtc,
      'price_eth': priceEth,
      'market_cap_usd': marketCapUsd,
      'circulating_supply': circulatingSupply,
      'volume_usd_24h': volumeUsd24h,
      'change_1h': change1h,
      'change_24h': change24h,
      'change_7d': change7d,
      'rank': rank,
      'last_updated': lastUpdated,
    }.withoutNulls,
  );

  return firestoreData;
}

class CryptocurrencyRecordDocumentEquality
    implements Equality<CryptocurrencyRecord> {
  const CryptocurrencyRecordDocumentEquality();

  @override
  bool equals(CryptocurrencyRecord? e1, CryptocurrencyRecord? e2) {
    return e1?.symbol == e2?.symbol &&
        e1?.priceUsd == e2?.priceUsd &&
        e1?.priceBtc == e2?.priceBtc &&
        e1?.priceEth == e2?.priceEth &&
        e1?.marketCapUsd == e2?.marketCapUsd &&
        e1?.circulatingSupply == e2?.circulatingSupply &&
        e1?.volumeUsd24h == e2?.volumeUsd24h &&
        e1?.change1h == e2?.change1h &&
        e1?.change24h == e2?.change24h &&
        e1?.change7d == e2?.change7d &&
        e1?.rank == e2?.rank &&
        e1?.lastUpdated == e2?.lastUpdated;
  }

  @override
  int hash(CryptocurrencyRecord? e) => const ListEquality().hash([
        e?.symbol,
        e?.priceUsd,
        e?.priceBtc,
        e?.priceEth,
        e?.marketCapUsd,
        e?.circulatingSupply,
        e?.volumeUsd24h,
        e?.change1h,
        e?.change24h,
        e?.change7d,
        e?.rank,
        e?.lastUpdated
      ]);

  @override
  bool isValidKey(Object? o) => o is CryptocurrencyRecord;
}
