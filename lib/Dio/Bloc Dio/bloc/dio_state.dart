part of 'dio_bloc.dart';

@immutable
sealed class DioState {}

final class DioInitial extends DioState {}
final class DioLoading extends DioState {}

final class DioLoaded extends DioState {
  final List <Artical>  artical;
  DioLoaded({required this.artical, required List<Artical> articles});

}
final class DioError extends DioState {
  final String error;
  DioError({required this.error});
}  