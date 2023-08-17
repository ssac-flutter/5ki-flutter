import 'package:firebase_auth/firebase_auth.dart';
import 'package:github_login/domain/social_login.dart';

class GithubLogin implements SocialLogin {

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
      await FirebaseAuth.instance.signOut();

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<UserCredential> _signInWithGitHub() async {
    // Create a new provider
    GithubAuthProvider githubProvider = GithubAuthProvider();

    return await FirebaseAuth.instance.signInWithProvider(githubProvider);
  }
}
