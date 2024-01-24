import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ActivityRecord extends FirestoreRecord {
  ActivityRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "timePosted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "notifyUsers" field.
  List<DocumentReference>? _notifyUsers;
  List<DocumentReference> get notifyUsers => _notifyUsers ?? const [];
  bool hasNotifyUsers() => _notifyUsers != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _type = snapshotData['type'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _timePosted = snapshotData['timePosted'] as DateTime?;
    _notifyUsers = getDataList(snapshotData['notifyUsers']);
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activity');

  static Stream<ActivityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivityRecord.fromSnapshot(s));

  static Future<ActivityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivityRecord.fromSnapshot(s));

  static ActivityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivityRecordData({
  String? name,
  String? description,
  String? type,
  DocumentReference? owner,
  DateTime? timePosted,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'type': type,
      'owner': owner,
      'timePosted': timePosted,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivityRecordDocumentEquality implements Equality<ActivityRecord> {
  const ActivityRecordDocumentEquality();

  @override
  bool equals(ActivityRecord? e1, ActivityRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.type == e2?.type &&
        e1?.owner == e2?.owner &&
        e1?.timePosted == e2?.timePosted &&
        listEquality.equals(e1?.notifyUsers, e2?.notifyUsers) &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ActivityRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.type,
        e?.owner,
        e?.timePosted,
        e?.notifyUsers,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is ActivityRecord;
}
