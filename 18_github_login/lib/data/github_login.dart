import 'package:firebase_auth/firebase_auth.dart';
import 'package:github_login/domain/social_login.dart';

class GithubLogin implements SocialLogin {
  final FirebaseAuth _auth;

  GithubLogin(this._auth);

  @override
  Future<bool> login() async {
    try {
      await _signInWithGitHub();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> logout() async {
    try {
      await _auth.signOut();

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<UserCredential> _signInWithGitHub() async {
    // Create a new provider
    GithubAuthProvider githubProvider = GithubAuthProvider();

    return await _auth.signInWithProvider(githubProvider);
  }
}
