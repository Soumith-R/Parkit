import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationsRecord extends FirestoreRecord {
  LocationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "slots" field.
  int? _slots;
  int get slots => _slots ?? 0;
  bool hasSlots() => _slots != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "contact" field.
  int? _contact;
  int get contact => _contact ?? 0;
  bool hasContact() => _contact != null;

  void _initializeFields() {
    _location = snapshotData['location'] as LatLng?;
    _name = snapshotData['name'] as String?;
    _slots = castToType<int>(snapshotData['slots']);
    _price = castToType<int>(snapshotData['price']);
    _contact = castToType<int>(snapshotData['contact']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('locations');

  static Stream<LocationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocationsRecord.fromSnapshot(s));

  static Future<LocationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocationsRecord.fromSnapshot(s));

  static LocationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocationsRecordData({
  LatLng? location,
  String? name,
  int? slots,
  int? price,
  int? contact,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location': location,
      'name': name,
      'slots': slots,
      'price': price,
      'contact': contact,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocationsRecordDocumentEquality implements Equality<LocationsRecord> {
  const LocationsRecordDocumentEquality();

  @override
  bool equals(LocationsRecord? e1, LocationsRecord? e2) {
    return e1?.location == e2?.location &&
        e1?.name == e2?.name &&
        e1?.slots == e2?.slots &&
        e1?.price == e2?.price &&
        e1?.contact == e2?.contact;
  }

  @override
  int hash(LocationsRecord? e) => const ListEquality()
      .hash([e?.location, e?.name, e?.slots, e?.price, e?.contact]);

  @override
  bool isValidKey(Object? o) => o is LocationsRecord;
}
