import 'package:cloud_firestore/cloud_firestore.dart';

final firestore = FirebaseFirestore.instance;

final qustionPeoperRF = firestore.collection('qustionpeoper');

DocumentReference qustionRF(
        {required String paperId, required String qustionId}) =>
    qustionPeoperRF.doc(paperId).collection('qustions').doc(qustionId);
