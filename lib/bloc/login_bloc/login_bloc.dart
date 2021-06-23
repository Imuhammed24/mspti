import 'package:equatable/equatable.dart';
import 'package:flutter_app/bloc/auth_bloc/auth.dart';
import 'package:flutter_app/repositories/repositories.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

part 'login_event.dart';
part 'login_state.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState>{
  final UserRepositories userRepositories;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
      required this.userRepositories,
      required this.authenticationBloc
  }) : assert(userRepositories != null),
  assert(authenticationBloc != null);

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async*{
    if(event is LoginButtonPressed){
      yield LoginLoading();

      try{
        final token = await userRepositories.login(event.email, event.password);
        authenticationBloc.add(LoggedIn(token: token));
        yield LoginInitial();
      }catch(error){
        LoginFailure(error: error.toString());
      }
    }
  }

}