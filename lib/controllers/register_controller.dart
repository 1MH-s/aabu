import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  bool isObscure = true;

  void register({required String email, required String password}) async {
    if (_isValidEmailPassword(email, password)) {
      try {
        UserCredential cridential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        Get.offNamed("/home_page");
      } on FirebaseAuthException catch (e) {
        _showFirebaseAuthExceptionMessage(e.code);
      } catch (e) {
        print("caught: $e");
      }
    } else {
      _showFirebaseAuthExceptionMessage("invalid-credential");
    }
  }

  bool _isValidEmailPassword(String email, String password) {
    if (email.length != 25) {
      return false;
    }
    if (password.length < 8) {
      return false;
    }
    print(
        "message to myself: You have to check password strength"); //TO DO: check password strength.
    return true;
  }

  void _showFirebaseAuthExceptionMessage(String exception) {
    switch (exception) {
      case "invalid-email":
        Get.rawSnackbar(message: "invalid email");
        break;
      case "network-request-failed":
        Get.rawSnackbar(message: "There is an issue in the network");
        break;
      case "email-already-in-use":
        Get.rawSnackbar(message: "Email already in use");
        break;
      case "weak-password":
        Get.rawSnackbar(message: "Weak password");
        break;
      default:
        Get.rawSnackbar(message: "Unexpected error happened");
        print(exception);
        break;
    }
  }
}
