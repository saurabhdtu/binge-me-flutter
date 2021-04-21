import 'package:binge_me/feature/splash/models/auth_steams.dart';
import 'package:binge_me/utils/PreferenceHelper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationBloc extends Cubit<SplashState> {
  AuthenticationBloc() : super(SplashLoadingState());
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: <String>[
    'email',
    'profile'
        'https://www.googleapis.com/auth/contacts.readonly',
  ]);
  GoogleSignInAccount _currentAccount;

  void getAuthorizationState() async {
    String authToken = await getStringPrefs(SharedPreferencesKeys.AUTH_TOKEN);
    _currentAccount = _googleSignIn.currentUser;
    if (authToken == null || _currentAccount == null) {
      emit(SplashLoginState());
    }
  }

  void googleLogin() async {
    _googleSignIn.signIn()
  }
}
