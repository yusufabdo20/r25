abstract class GetNewsStates {}

class GetNewsInitial extends GetNewsStates {}

class GetNewsSuccess extends GetNewsStates {
  final List data;

  GetNewsSuccess({required this.data});
}

class GetNewsError extends GetNewsStates {}

class GetNewsLoading extends GetNewsStates {}
