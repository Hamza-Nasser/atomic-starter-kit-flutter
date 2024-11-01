import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../persistence/shared_preferences/shared_preferences.dart';
import '../../persistence/shared_preferences/shared_preferences_keys.dart';

part 'starter_screen_event.dart';
part 'starter_screen_state.dart';

class StarterScreenBloc extends Bloc<StarterScreenEvent, StarterScreenState> {
  StarterScreenBloc._internal() : super(const StarterScreenState()) {
    on<DecideWhereToGoEvent>(_onDecideWhereToGo);
  }
  static final StarterScreenBloc _instance = StarterScreenBloc._internal();
  factory StarterScreenBloc() {
    return _instance;
  }

  void _onDecideWhereToGo(
      DecideWhereToGoEvent event, Emitter<StarterScreenState> emit) async {
    final isFirstRun = Preferences.getBool(PreferencesKey.firstRun);
    emit(state.copyWith(
      screenStartDestination: ScreenStartDestinationStatus.signIn,
    ));
  }
}
