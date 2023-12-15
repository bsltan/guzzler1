import 'package:flutter/material.dart';
import 'package:guzzler/screens/otp_screen.dart';
import 'package:guzzler/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  bool _isSignedIn = false;
  bool get isSignedIn => _isSignedIn;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  AuthProvider() {
    checkSign();
  }

  void checkSign() async {
    final SharedPreferences s = await SharedPreferences.getInstance();
    _isSignedIn = s.getBool("is_sifnedin") ?? false;
    notifyListeners();
  }

  void signInWithPhone(BuildContext context, String phoneNumber) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
          verificationCompleted: (PhoneAuthCredential PhoneAuthCredential) async {
            await _firebaseAuth.signWithCredential(PhoneAuthCredential);
          },
          verificationFailed: (error){
            throw Exception(error.message);
          }
          codeSent: (verificationId, forceResendingToken) {
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> OtpScreen(verificationId: verificationId),
              ),
            );
          }
          codeAutoRetrivalTimeout: (verificationId) {});
    } on FirebaeAuthException catch (e) {
      showSnackBar(context, e.message.toString());
    }
  }
}
