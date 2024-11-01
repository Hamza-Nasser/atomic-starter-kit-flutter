part of 'starter_screen_bloc.dart';

enum ScreenStartDestinationStatus {
  deciding,
  onboarding,
  signIn,
  main,
}

class StarterScreenState extends Equatable {
  const StarterScreenState({
    this.screenStartDestination = ScreenStartDestinationStatus.deciding,
  });
  final ScreenStartDestinationStatus screenStartDestination;

  StarterScreenState copyWith({
    ScreenStartDestinationStatus? screenStartDestination,
  }) {
    return StarterScreenState(
      screenStartDestination:
          screenStartDestination ?? this.screenStartDestination,
    );
  }

  @override
  List<Object> get props => [screenStartDestination];
}
