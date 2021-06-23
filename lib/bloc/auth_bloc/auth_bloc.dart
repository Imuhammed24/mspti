import 'package:flutter_app/bloc/auth_bloc/auth.dart';
import 'package:flutter_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth.dart';
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepositories userRepositories;
  AuthenticationBloc({required this.userRepositories}) : assert(userRepositories != null);

  @override
  // TODO: implement initialState
  AuthenticationState get initialState => AuthenticationUninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async*{
    if (event is AppStarted){
      final bool hasToken = await userRepositories.hasToken();
      if (hasToken){
        yield AuthenticationAuthenticated();
      }else{
        yield AuthenticationUnauthenticated();
      }
    }
    if(event is LoggedIn){
      yield AuthenticationLoading();
      await userRepositories.persistToken(event.token);
      yield AuthenticationAuthenticated();
    }
    if(event is LoggedOut){
      yield AuthenticationLoading();
      await userRepositories.deleteToken();
      yield AuthenticationUnauthenticated();
    }
  }
}
