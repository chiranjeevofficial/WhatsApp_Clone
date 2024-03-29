import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_messanger/common/helper/show_alert_dailog.dart';
import 'package:whatsapp_messanger/common/routes/routes.dart';

final authRepositoryProvider = Provider(
  (ref) {
    return AuthRepository(
      auth: FirebaseAuth.instance,
      firestore: FirebaseFirestore.instance,
    );
  },
);

class AuthRepository {
  late final FirebaseAuth auth;
  late final FirebaseFirestore firestore;

  AuthRepository({required this.auth, required this.firestore});

  void verifySmsCode({
    required BuildContext context,
    required String smsCodeId,
    required String smsCode,
    required bool mounted,
  }) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: smsCodeId,
        smsCode: smsCode,
      );
      await auth.signInWithCredential(credential);
      if (!mounted) return;
      Navigator.of(context)
          .pushNamedAndRemoveUntil(Routes.userInfo, (route) => false);
    } on FirebaseAuthException catch (e) {
      showAlertDailog(context: context, message: e.toString());
    }
  }

  void sendSmsCode({
    required BuildContext context,
    required String phoneNumber,
  }) async {
    try {
      await auth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted: (PhoneAuthCredential credential) async {
            await auth.signInWithCredential(credential);
          },
          verificationFailed: (e) {
            showAlertDailog(context: context, message: e.toString());
          },
          codeSent: (smsCodeId, resentSmsCodeId) {
            Navigator.of(context).pushNamedAndRemoveUntil(
              Routes.verification,
              (route) => false,
              arguments: {
                'phoneNumber': phoneNumber,
                'smsCodeId': smsCodeId,
              },
            );
          },
          codeAutoRetrievalTimeout: (String smsCodeId) {});
    } on FirebaseAuthException catch (e) {
      // ignore: use_build_context_synchronously
      showAlertDailog(context: context, message: e.toString());
    }
  }
}
